.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$SettingsObserver;,
        Lcom/android/server/Watchdog$FileDescriptorWatcher;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    }
.end annotation


# static fields
.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field public static final BIGDATA_INTERVAL:J = 0x2d0L

.field public static final COMPLETED:I = 0x0

.field public static final CONVERT_TIME_AND_SIZE:J = 0x100000L

.field public static final DB:Z = false

.field public static final DEBUG:Z = false

.field public static final DEBUG_LEVEL_LOW:Z

.field public static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final FD_COUNT_5000:J = 0x1388L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field public static final OLOG_INTERVAL:J = 0x14L

.field public static final OVERDUE:I = 0x3

.field public static final PROP_FATAL_LOOP_COUNT:Ljava/lang/String; = "framework_watchdog.fatal_count"

.field public static final PROP_FATAL_LOOP_WINDOWS_SECS:Ljava/lang/String; = "framework_watchdog.fatal_window.second"

.field public static final RESET_INTERVAL:I = 0x14

.field public static final SCREEN_OFF_INTERVAL:I = 0x2

.field public static final SOFTDOG_LONG_TIMEOUT:I = 0x3e8

.field public static final SOFTDOG_TIMEOUT:I = 0x64

.field public static final SYNC_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS"

.field public static final TAG:Ljava/lang/String; = "Watchdog"

.field public static final THRESHOLD_OF_HEAPSIZE:D

.field public static final TIMEOUT_HISTORY_FILE:Ljava/lang/String; = "/data/system/watchdog-timeout-history.txt"

.field public static final WAITED_HALF:I = 0x2

.field public static final WAITING:I = 0x1

.field public static isDumped:Z

.field public static mAllocatedMemory:J

.field public static mContext:Landroid/content/Context;

.field public static mCurrentBlockGcCount:J

.field public static mCurrentTimeGc:D

.field public static mFdCount:I

.field public static mHeapDumped:Z

.field public static mMaxHeap:J

.field public static mMinHeap:J

.field public static mOverThresholdCnt:I

.field public static mPrevBlockingGcCount:J

.field public static mPrevTotalTimeGc:D

.field public static mScreenOffCount:I

.field public static mSoftdogDisabled:Z

.field public static mSoftdogFd:I

.field public static mSoftdogTimeout:I

.field public static mTotalMemory:J

.field public static sWatchdog:Lcom/android/server/Watchdog;

.field public static syncCount:J


# instance fields
.field public final fdWatcher:Lcom/android/server/Watchdog$FileDescriptorWatcher;

.field public mActivity:Lcom/android/server/am/ActivityManagerService;

.field public mAllowRestart:Z

.field public mController:Landroid/app/IActivityController;

.field public mControllerDescription:Ljava/lang/String;

.field public final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;",
            ">;"
        }
    .end annotation
.end field

.field public final mInterestingJavaPids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field public mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public final mThread:Ljava/lang/Thread;

.field public final mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

.field public volatile mWatchdogTimeoutMillis:J


# direct methods
.method public static synthetic $r8$lambda$W7y-nlYuEBh_r4--InIAt97WYPU(Lcom/android/server/Watchdog;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/Watchdog;->run()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/Watchdog;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemHqmManager(Lcom/android/server/Watchdog;)Landroid/os/SemHqmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/Watchdog;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSemHqmManager(Lcom/android/server/Watchdog;Landroid/os/SemHqmManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/Watchdog;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$msoftdogKick(Lcom/android/server/Watchdog;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/Watchdog;->softdogKick(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmAllocatedMemory()J
    .registers 2

    sget-wide v0, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmCurrentBlockGcCount()J
    .registers 2

    sget-wide v0, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmCurrentTimeGc()D
    .registers 2

    sget-wide v0, Lcom/android/server/Watchdog;->mCurrentTimeGc:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmMaxHeap()J
    .registers 2

    sget-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmMinHeap()J
    .registers 2

    sget-wide v0, Lcom/android/server/Watchdog;->mMinHeap:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmTotalMemory()J
    .registers 2

    sget-wide v0, Lcom/android/server/Watchdog;->mTotalMemory:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsyncCount()J
    .registers 2

    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfputmMaxHeap(J)V
    .registers 2

    sput-wide p0, Lcom/android/server/Watchdog;->mMaxHeap:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputmMinHeap(J)V
    .registers 2

    sput-wide p0, Lcom/android/server/Watchdog;->mMinHeap:J

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 31

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "Unknown"

    .line 123
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/Watchdog;->DEBUG_LEVEL_LOW:Z

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/audioserver"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/system/bin/cameraserver"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "/system/bin/drmserver"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "/system/bin/keystore2"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "/system/bin/mediadrmserver"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "/system/bin/mediaserver"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "/system/bin/netd"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "/system/bin/sdcard"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v4, "/system/bin/surfaceflinger"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    const-string v4, "/system/bin/vold"

    aput-object v4, v0, v1

    const/16 v1, 0xa

    const-string v4, "/system/bin/installd"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v4, "media.extractor"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v4, "media.metrics"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v4, "media.codec"

    aput-object v4, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v4, "media.swcodec"

    aput-object v4, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v4, "media.hwcodec"

    aput-object v4, v0, v1

    const/16 v1, 0x10

    const-string v4, "/vendor/bin/hw/samsung.hardware.media.c2@1.0-service"

    aput-object v4, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v4, "media.transcoding"

    aput-object v4, v0, v1

    const/16 v1, 0x12

    const-string v4, "com.android.bluetooth"

    aput-object v4, v0, v1

    const/16 v1, 0x13

    const-string v4, "/apex/com.android.os.statsd/bin/statsd"

    aput-object v4, v0, v1

    const/16 v1, 0x14

    const-string v4, "/apex/com.samsung.android.spqr/bin/spqr"

    aput-object v4, v0, v1

    .line 187
    invoke-static {}, Lcom/android/server/Watchdog;->getDex2oatProcessName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    const/16 v1, 0x16

    const-string/jumbo v4, "zygote64"

    aput-object v4, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v4, "zygote"

    aput-object v4, v0, v1

    const/16 v1, 0x18

    const-string v4, "/vendor/bin/hw/vendor.samsung.hardware.camera.provider-service_64"

    aput-object v4, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const-string v5, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v6, "android.hardware.audio@5.0::IDevicesFactory"

    const-string v7, "android.hardware.audio@6.0::IDevicesFactory"

    const-string v8, "android.hardware.audio@7.0::IDevicesFactory"

    const-string v9, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v10, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string v11, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v12, "android.hardware.camera.provider@2.7::ICameraProvider"

    const-string v13, "android.hardware.gnss@1.0::IGnss"

    const-string v14, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string v15, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v16, "android.hardware.health@2.0::IHealth"

    const-string v17, "android.hardware.light@2.0::ILight"

    const-string v18, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v19, "android.hardware.media.omx@1.0::IOmx"

    const-string v20, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v21, "android.hardware.neuralnetworks@1.0::IDevice"

    const-string v22, "android.hardware.power@1.0::IPower"

    const-string v23, "android.hardware.power.stats@1.0::IPowerStats"

    const-string v24, "android.hardware.sensors@1.0::ISensors"

    const-string v25, "android.hardware.sensors@2.0::ISensors"

    const-string v26, "android.hardware.sensors@2.1::ISensors"

    const-string v27, "android.hardware.vibrator@1.0::IVibrator"

    const-string v28, "android.hardware.vr@1.0::IVr"

    const-string v29, "android.system.suspend@1.0::ISystemSuspend"

    const-string/jumbo v30, "vendor.qti.hardware.perf@2.3::IPerf"

    .line 193
    filled-new-array/range {v5 .. v30}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    const-string v4, "android.hardware.biometrics.face.IFace/"

    const-string v5, "android.hardware.biometrics.fingerprint.IFingerprint/"

    const-string v6, "android.hardware.light.ILights/"

    const-string v7, "android.hardware.power.IPower/"

    const-string v8, "android.hardware.power.stats.IPowerStats/"

    const-string v9, "android.hardware.sensors.ISensors"

    const-string v10, "android.hardware.vibrator.IVibrator/"

    const-string v11, "android.hardware.vibrator.IVibratorManager/"

    .line 222
    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    const/16 v0, 0x64

    .line 254
    sput v0, Lcom/android/server/Watchdog;->mSoftdogTimeout:I

    .line 255
    sput-boolean v3, Lcom/android/server/Watchdog;->mSoftdogDisabled:Z

    const/4 v0, -0x1

    .line 256
    sput v0, Lcom/android/server/Watchdog;->mSoftdogFd:I

    const-wide/16 v0, 0x0

    .line 302
    sput-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    .line 944
    sput v2, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    .line 945
    sput v2, Lcom/android/server/Watchdog;->mScreenOffCount:I

    .line 946
    sput-wide v0, Lcom/android/server/Watchdog;->mPrevBlockingGcCount:J

    const-wide/16 v3, 0x0

    .line 947
    sput-wide v3, Lcom/android/server/Watchdog;->mPrevTotalTimeGc:D

    .line 948
    sput-wide v3, Lcom/android/server/Watchdog;->mCurrentTimeGc:D

    .line 949
    sput-wide v0, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    .line 950
    sput-wide v0, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 951
    sput-wide v0, Lcom/android/server/Watchdog;->mTotalMemory:J

    const-wide v3, 0x7fffffffffffffffL

    .line 952
    sput-wide v3, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 953
    sput-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    .line 960
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v3, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr v0, v3

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v3

    sput-wide v0, Lcom/android/server/Watchdog;->THRESHOLD_OF_HEAPSIZE:D

    .line 962
    sput v2, Lcom/android/server/Watchdog;->mFdCount:I

    .line 963
    sput-boolean v2, Lcom/android/server/Watchdog;->isDumped:Z

    .line 964
    sput-boolean v2, Lcom/android/server/Watchdog;->mHeapDumped:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 244
    iput-boolean v1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    const-wide/32 v1, 0xea60

    .line 247
    iput-wide v1, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    const/4 v2, 0x0

    .line 297
    iput-object v2, p0, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    .line 961
    iput-object v2, p0, Lcom/android/server/Watchdog;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 595
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/Watchdog;)V

    const-string/jumbo v5, "watchdog"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 604
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "foreground thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 606
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v4, Landroid/os/Handler;

    .line 610
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v5, "main thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 609
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 613
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "ui thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 612
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 616
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "i/o thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 615
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 619
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "display thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 618
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 622
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "animation thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 621
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 625
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "surface animation thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 624
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 630
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 634
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    invoke-direct {v0, v2}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 636
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;

    invoke-direct {v0, v2}, Lcom/android/server/Watchdog$FileDescriptorWatcher;-><init>(Lcom/android/server/Watchdog$FileDescriptorWatcher-IA;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/Watchdog$FileDescriptorWatcher;

    .line 645
    new-instance v0, Lcom/android/server/am/TraceErrorLogger;

    invoke-direct {v0}, Lcom/android/server/am/TraceErrorLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    return-void
.end method

.method public static addInterestingAidlPids(Ljava/util/HashSet;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 899
    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 902
    :cond_7
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    .line 903
    sget-object v5, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_12
    if-ge v7, v6, :cond_2a

    aget-object v8, v5, v7

    .line 904
    iget-object v9, v4, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 905
    iget v8, v4, Landroid/os/ServiceDebugInfo;->debugPid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_2d
    return-void
.end method

.method public static addInterestingHidlPids(Ljava/util/HashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 879
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 883
    iget v2, v1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    goto :goto_c

    .line 887
    :cond_1e
    sget-object v2, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v3, v1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_c

    .line 891
    :cond_29
    iget v1, v1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_c

    :catch_33
    move-exception p0

    const-string v0, "Watchdog"

    .line 894
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    return-void
.end method

.method public static getDex2oatProcessName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.product.cpu.abilist64"

    .line 152
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "dalvik.vm.dex2oat64.enabled"

    .line 153
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_21

    const-string v0, "/apex/com.android.art/bin/dex2oat64"

    goto :goto_23

    :cond_21
    const-string v0, "/apex/com.android.art/bin/dex2oat32"

    :goto_23
    return-object v0
.end method

.method public static getFdCount()I
    .registers 2

    .line 928
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 929
    array-length v0, v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .line 471
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 472
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 475
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 912
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 913
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingAidlPids(Ljava/util/HashSet;)V

    .line 914
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingHidlPids(Ljava/util/HashSet;)V

    .line 916
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_23

    .line 918
    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_23

    aget v4, v1, v3

    .line 919
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 923
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static isInterestingJavaProcess(Ljava/lang/String;)Z
    .registers 2

    .line 725
    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.android.phone"

    .line 726
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private native native_sdogClose()V
.end method

.method private native native_sdogKick()V
.end method

.method private native native_sdogOpen()I
.end method

.method private native native_sdogSetTimeout(I)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 3

    .line 767
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_3
    iget-object p0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {p0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    .line 769
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 6

    .line 773
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 775
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 8

    .line 780
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 782
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 783
    invoke-static {v3, p2, p3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withCustomTimeout(Lcom/android/server/Watchdog$HandlerChecker;J)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object p0

    .line 782
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final breakCrashLoop()V
    .registers 4

    .line 1568
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/dev/kmsg_debug"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_1b

    :try_start_8
    const-string v1, "Fatal reset to escape the system_server crashing loop\n"

    .line 1569
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 1570
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1b

    goto :goto_23

    :catchall_11
    move-exception v1

    .line 1568
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v0

    :try_start_17
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    const-string v1, "Watchdog"

    const-string v2, "Failed to append to kmsg"

    .line 1571
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    const/16 v0, 0x63

    .line 1573
    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    return-void
.end method

.method public final checkFd()V
    .registers 5

    .line 1057
    sget v0, Lcom/android/server/Watchdog;->mFdCount:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e

    sget-boolean v0, Lcom/android/server/Watchdog;->isDumped:Z

    if-eqz v0, :cond_e

    goto :goto_1e

    .line 1060
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/Watchdog$FileDescriptorWatcher;

    const-string/jumbo v1, "watchdogFdDump"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    .line 1062
    sput-boolean p0, Lcom/android/server/Watchdog;->isDumped:Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final checkHeap()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1067
    sget-wide v0, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    long-to-double v0, v0

    sget-wide v2, Lcom/android/server/Watchdog;->THRESHOLD_OF_HEAPSIZE:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_f

    .line 1068
    sput v1, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    .line 1069
    sput v1, Lcom/android/server/Watchdog;->mScreenOffCount:I

    return-void

    .line 1072
    :cond_f
    sget v0, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ The heap has been allocated excessively. OverThresholdCnt : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Watchdog"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->makeHeapDump()V

    .line 1079
    sget p0, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    const/16 v0, 0x14

    if-ge p0, v0, :cond_3d

    const-string/jumbo p0, "under RESET_INTERVAL"

    .line 1080
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1086
    :cond_3d
    sget-object p0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    .line 1087
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_59

    .line 1088
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_59

    const-string/jumbo p0, "screen is on now"

    .line 1089
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    sput v1, Lcom/android/server/Watchdog;->mScreenOffCount:I

    goto :goto_5f

    .line 1092
    :cond_59
    sget p0, Lcom/android/server/Watchdog;->mScreenOffCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/server/Watchdog;->mScreenOffCount:I

    .line 1094
    :goto_5f
    sget p0, Lcom/android/server/Watchdog;->mScreenOffCount:I

    const/4 v0, 0x2

    if-gt p0, v0, :cond_7b

    .line 1095
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!@ screen is on now (or off few seconds ago) cnt : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/Watchdog;->mScreenOffCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1100
    :cond_7b
    sget-object p0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_8d

    const-string p0, "Failed to get AudioManager"

    .line 1102
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1105
    :cond_8d
    invoke-virtual {p0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object p0

    .line 1106
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_95
    :goto_95
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 1107
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    if-eq v3, v0, :cond_95

    const/4 v4, 0x6

    if-ne v3, v4, :cond_af

    goto :goto_95

    .line 1113
    :cond_af
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 1114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!@ audio is active by uid : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1120
    :cond_ce
    sget-object p0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    .line 1121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_e7

    .line 1122
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    if-eqz p0, :cond_e7

    const-string p0, "!@ In call"

    .line 1123
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1128
    :cond_e7
    new-instance p0, Ljava/lang/OutOfMemoryError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeapFull, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB was used"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 867
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 868
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 869
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    const-string v1, ", "

    .line 870
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :cond_19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 874
    :cond_29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final doSysRq(C)V
    .registers 3

    .line 1465
    :try_start_0
    new-instance p0, Ljava/io/FileWriter;

    const-string v0, "/proc/sysrq-trigger"

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 1467
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string p1, "Watchdog"

    const-string v0, "Failed to write to /proc/sysrq-trigger"

    .line 1469
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string p2, "WatchdogTimeoutMillis="

    .line 1578
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1579
    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public final evaluateCheckerCompletionLocked()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 848
    :goto_2
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 849
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 850
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_21
    return v1
.end method

.method public final getCheckersWithStateLocked(I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 857
    :goto_6
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 858
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 859
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 860
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    return-object v0
.end method

.method public final getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;
    .registers 5

    .line 933
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 936
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 937
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->printCpuCoreInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasActiveUsbConnection()Z
    .registers 3

    .line 1516
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/sys/class/android_usb/android0/state"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1518
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CONFIGURED"

    .line 1519
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_1c

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :catch_1c
    move-exception p0

    const-string v0, "Watchdog"

    const-string v1, "Failed to determine if device was on USB"

    .line 1523
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    .line 661
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 662
    sput-object p1, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 663
    new-instance p2, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {p2, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.REBOOT"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.permission.REBOOT"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final isCrashLoopFound()Z
    .registers 13

    .line 1529
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_count()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1530
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1531
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_window_seconds()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 1530
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-string v4, "Watchdog"

    const/4 v5, 0x1

    if-eqz v0, :cond_9a

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_34

    goto :goto_9a

    .line 1541
    :cond_34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->readTimeoutHistory()[Ljava/lang/String;

    move-result-object v8

    .line 1543
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v8

    sub-int/2addr v10, v0

    sub-int/2addr v10, v5

    .line 1545
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    array-length v11, v8

    .line 1543
    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1548
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    invoke-virtual {p0, v9}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->hasActiveUsbConnection()Z

    move-result v8

    if-eqz v8, :cond_64

    return v1

    .line 1558
    :cond_64
    :try_start_64
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6e} :catch_7b

    .line 1564
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v0, :cond_7a

    sub-long/2addr v6, v10

    cmp-long p0, v6, v2

    if-gez p0, :cond_7a

    move v1, v5

    :cond_7a
    return v1

    :catch_7b
    move-exception v0

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parseLong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->resetTimeoutHistory()V

    return v1

    :cond_9a
    :goto_9a
    int-to-long v6, v0

    cmp-long p0, v6, v2

    if-eqz p0, :cond_b4

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "framework_watchdog.fatal_count"

    aput-object v0, p0, v1

    const-string v0, "framework_watchdog.fatal_window.second"

    aput-object v0, p0, v5

    const-string/jumbo v0, "sysprops \'%s\' and \'%s\' should be set or unset together"

    .line 1534
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    return v1
.end method

.method public final logWatchog(ZLjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/BinderTransaction$BinderProcsInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v9, p4

    .line 1387
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForSystemServerTraceFile()Ljava/lang/String;

    move-result-object v8

    .line 1388
    iget-object v3, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v3}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v10

    .line 1389
    iget-object v3, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v3}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1390
    iget-object v3, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    const-string/jumbo v4, "system_server"

    invoke-virtual {v3, v4, v10}, Lcom/android/server/am/TraceErrorLogger;->addErrorIdToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 1391
    iget-object v3, v1, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v3, v0, v10}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    :cond_2b
    if-eqz p1, :cond_38

    .line 1397
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logHalfWatchdog(Ljava/lang/String;)V

    const-string/jumbo v3, "pre_watchdog"

    goto :goto_4c

    .line 1400
    :cond_38
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v3

    invoke-virtual {v3, v0, v10}, Lcom/android/server/criticalevents/CriticalEventLog;->logWatchdog(Ljava/lang/String;Ljava/util/UUID;)V

    const/16 v3, 0xaf2

    .line 1401
    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/16 v3, 0xb9

    .line 1405
    invoke-static {v3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    const-string/jumbo v3, "watchdog"

    :goto_4c
    move-object v11, v3

    .line 1408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1409
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1410
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    if-eqz v9, :cond_80

    .line 1415
    iget-object v3, v9, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->javaPids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6a
    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1416
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 1417
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 1422
    :cond_80
    iget-object v3, v1, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1423
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v2, p3

    move-object v6, v15

    move-object/from16 v7, p2

    .line 1422
    invoke-static/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v0, "Watchdog"

    const-string v2, "!@*** End dumpStackTraces"

    .line 1425
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1388

    .line 1428
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1432
    iget-object v0, v1, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {v15}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_bc

    const/16 v0, 0x77

    .line 1438
    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v0, 0x6c

    .line 1439
    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1445
    :cond_bc
    new-instance v8, Lcom/android/server/Watchdog$3;

    const-string/jumbo v2, "watchdogWriteToDropbox"

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v14

    move-object v6, v10

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/Watchdog$3;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V

    .line 1457
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x7d0

    .line 1459
    :try_start_d1
    invoke-virtual {v8, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_d4
    .catch Ljava/lang/InterruptedException; {:try_start_d1 .. :try_end_d4} :catch_d4

    :catch_d4
    return-void
.end method

.method public final makeHeapDump()V
    .registers 3

    .line 1132
    sget-boolean v0, Lcom/android/server/Watchdog;->DEBUG_LEVEL_LOW:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/server/Watchdog;->mHeapDumped:Z

    if-eqz v0, :cond_9

    goto :goto_17

    :cond_9
    const/4 v0, 0x1

    .line 1135
    sput-boolean v0, Lcom/android/server/Watchdog;->mHeapDumped:Z

    .line 1136
    new-instance v0, Lcom/android/server/Watchdog$2;

    const-string/jumbo v1, "watchdogHeapDump"

    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_17
    :goto_17
    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .registers 6

    .line 801
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_3
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 803
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v1

    .line 804
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 805
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    goto :goto_9

    .line 808
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final printLogAndCheckStatus()V
    .registers 7

    .line 967
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/Watchdog;->mTotalMemory:J

    .line 968
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 969
    invoke-static {}, Lcom/android/server/Watchdog;->getFdCount()I

    move-result v0

    sput v0, Lcom/android/server/Watchdog;->mFdCount:I

    .line 970
    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    .line 971
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->printSyncLog()V

    .line 972
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->sendStatusInfoForBigData()V

    .line 973
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->checkFd()V

    .line 974
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->checkHeap()V

    return-void
.end method

.method public final printSyncLog()V
    .registers 11

    .line 979
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    sget-boolean p0, Lcom/android/server/Watchdog;->mSoftdogDisabled:Z

    if-eqz p0, :cond_2e

    const-string p0, " softdog disabled"

    goto :goto_30

    :cond_2e
    const-string p0, ""

    :goto_30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 982
    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    const-wide/16 v2, 0x14

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "Watchdog"

    if-lez v0, :cond_7c

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Sync: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/Watchdog;->syncCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " heap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/Watchdog;->mTotalMemory:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " FD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/Watchdog;->mFdCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7c
    const-string v0, "art.gc.total-time-waiting-for-gc"

    .line 988
    invoke-static {v0}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "art.gc.blocking-gc-count"

    .line 990
    invoke-static {v0}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 991
    sget-wide v6, Lcom/android/server/Watchdog;->mPrevTotalTimeGc:D

    sub-double v6, v2, v6

    .line 992
    sget-wide v8, Lcom/android/server/Watchdog;->mPrevBlockingGcCount:J

    sub-long v8, v4, v8

    sput-wide v8, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    .line 994
    sput-wide v2, Lcom/android/server/Watchdog;->mPrevTotalTimeGc:D

    .line 995
    sput-wide v4, Lcom/android/server/Watchdog;->mPrevBlockingGcCount:J

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v6, v2

    .line 997
    sput-wide v6, Lcom/android/server/Watchdog;->mCurrentTimeGc:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 998
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_af

    const-wide/16 v2, 0x0

    .line 999
    sput-wide v2, Lcom/android/server/Watchdog;->mCurrentTimeGc:D

    .line 1002
    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync:\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/Watchdog;->syncCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\theap:\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\t/\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/Watchdog;->mTotalMemory:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\tFD:\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/Watchdog;->mFdCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tobjects:\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "art.gc.objects-allocated"

    .line 1005
    invoke-static {v2}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tWaitTime:\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Lcom/android/server/Watchdog;->mCurrentTimeGc:D

    .line 1006
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.3f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tGCcnt:\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\tFullGC:\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "art.gc.pre-oome-gc-count"

    .line 1008
    invoke-static {v2}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    .line 1009
    invoke-static {v2, v0}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget-wide v0, Lcom/android/server/Watchdog;->mMinHeap:J

    sget-wide v2, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_14e

    .line 1013
    sput-wide v2, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 1015
    :cond_14e
    sget-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_156

    .line 1016
    sput-wide v2, Lcom/android/server/Watchdog;->mMaxHeap:J

    :cond_156
    return-void
.end method

.method public processDied(Ljava/lang/String;I)V
    .registers 6

    .line 746
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "Watchdog"

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " died. Pid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object p1, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 749
    :try_start_27
    iget-object p0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 750
    monitor-exit p1

    goto :goto_35

    :catchall_32
    move-exception p0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    :goto_35
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 6

    .line 734
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "Watchdog"

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " started. Pid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object p1, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 737
    :try_start_27
    iget-object p0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    monitor-exit p1

    goto :goto_35

    :catchall_32
    move-exception p0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    :goto_35
    return-void
.end method

.method public final readTimeoutHistory()[Ljava/lang/String;
    .registers 8

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/String;

    .line 1492
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_66
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_5e

    .line 1493
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_54

    if-nez v2, :cond_19

    .line 1506
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_18} :catch_66
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_5e

    return-object v0

    .line 1498
    :cond_19
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1499
    array-length v3, v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_54

    const-string v4, ""

    const/4 v5, 0x1

    if-lt v3, v5, :cond_2c

    :try_start_29
    aget-object p0, v2, p0

    goto :goto_2d

    :cond_2c
    move-object p0, v4

    .line 1500
    :goto_2d
    array-length v3, v2

    const/4 v6, 0x2

    if-lt v3, v6, :cond_33

    aget-object v4, v2, v5

    :cond_33
    const-string/jumbo v2, "ro.boottime.zygote"

    .line 1501
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_50

    const-string p0, ","

    .line 1502
    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_54

    .line 1506
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object p0

    :cond_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_53} :catch_66
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_53} :catch_5e

    return-object v0

    :catchall_54
    move-exception p0

    .line 1492
    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v1

    :try_start_5a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5d
    throw p0
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5e} :catch_66
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception p0

    const-string v1, "Watchdog"

    const-string v2, "Failed to read file /data/system/watchdog-timeout-history.txt"

    .line 1509
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_66
    return-object v0
.end method

.method public rebootSystem(Ljava/lang/String;)V
    .registers 3

    .line 838
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rebooting system because: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Watchdog"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "power"

    .line 839
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Landroid/os/IPowerManager;

    const/4 v0, 0x0

    .line 841
    :try_start_20
    invoke-interface {p0, v0, p1, v0}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/Context;)V
    .registers 5

    .line 705
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "system_server_watchdog_timeout_ms"

    .line 706
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/Watchdog$SettingsObserver;

    invoke-direct {v2, p1, p0}, Lcom/android/server/Watchdog$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V

    const/4 p0, 0x0

    .line 705
    invoke-virtual {v0, v1, p0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final resetTimeoutHistory()V
    .registers 2

    .line 1474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .registers 6

    .line 824
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_3
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 826
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v1

    .line 827
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 828
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    goto :goto_9

    .line 831
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final run()V
    .registers 22

    move-object/from16 v1, p0

    .line 1168
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->softdogInitialize()V

    const/4 v2, 0x0

    :goto_6
    move v3, v2

    .line 1171
    :cond_7
    :goto_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1178
    iget-wide v4, v1, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    const-wide/16 v6, 0x2

    .line 1179
    div-long v6, v4, v6

    .line 1181
    iget-object v8, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v8

    move v0, v2

    .line 1185
    :goto_14
    :try_start_14
    iget-object v9, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_44

    .line 1186
    iget-object v9, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 1189
    invoke-virtual {v9}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->customTimeoutMillis()Ljava/util/Optional;

    move-result-object v9

    sget v11, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v11, v11

    mul-long/2addr v11, v4

    .line 1190
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1189
    invoke-virtual {v10, v11, v12}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_44
    const/16 v4, 0x64

    .line 1197
    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->softdogKick(I)V

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->printLogAndCheckStatus()V

    .line 1205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    move v0, v2

    move-wide v11, v6

    :goto_52
    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    const/4 v13, 0x2

    if-lez v5, :cond_7f

    .line 1207
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v5
    :try_end_5d
    .catchall {:try_start_14 .. :try_end_5d} :catchall_2bd

    if-eqz v5, :cond_61

    move v5, v13

    goto :goto_62

    :cond_61
    move v5, v0

    .line 1211
    :goto_62
    :try_start_62
    iget-object v0, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_67} :catch_68
    .catchall {:try_start_62 .. :try_end_67} :catchall_2bd

    goto :goto_6e

    :catch_68
    move-exception v0

    :try_start_69
    const-string v11, "Watchdog"

    .line 1214
    invoke-static {v11, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1216
    :goto_6e
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_76

    move v0, v13

    goto :goto_77

    :cond_76
    move v0, v5

    .line 1219
    :goto_77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    sub-long v11, v6, v11

    goto :goto_52

    .line 1222
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v5

    if-nez v5, :cond_88

    .line 1226
    monitor-exit v8

    goto/16 :goto_6

    :cond_88
    const/4 v6, 0x1

    if-ne v5, v6, :cond_8e

    .line 1229
    monitor-exit v8

    goto/16 :goto_7

    :cond_8e
    if-ne v5, v13, :cond_f2

    if-nez v3, :cond_ef

    const-string v3, "Watchdog"

    const-string v5, "!@*** WAITED_HALF"

    .line 1232
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->softdogKick(I)V

    .line 1239
    invoke-virtual {v1, v13}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1240
    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 1241
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1245
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v7

    if-eqz v7, :cond_e9

    const-string v7, "Watchdog"

    .line 1246
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@*** unFreezeAllPackages for watchdog HALF debug! request time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1246
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v7

    const-string v9, "Watchdog_HALF"

    invoke-virtual {v7, v9}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    :cond_e9
    move-object v14, v5

    move v7, v6

    move-object v5, v4

    move-object v4, v3

    move v3, v7

    goto :goto_107

    .line 1252
    :cond_ef
    monitor-exit v8

    goto/16 :goto_7

    :cond_f2
    const/4 v4, 0x3

    .line 1256
    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1257
    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 1258
    iget-boolean v6, v1, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 1259
    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v14, v7

    move v7, v6

    move v6, v2

    .line 1261
    :goto_107
    monitor-exit v8
    :try_end_108
    .catchall {:try_start_69 .. :try_end_108} :catchall_2bd

    .line 1264
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/ActivityManagerService;->getBinderTransactionInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    move-result-object v8

    if-nez v6, :cond_115

    .line 1272
    invoke-virtual {v1, v6, v5, v14, v8}, Lcom/android/server/Watchdog;->logWatchog(ZLjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V

    :cond_115
    if-eqz v6, :cond_14a

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v5

    .line 1275
    invoke-static/range {v14 .. v20}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const-string v0, "Watchdog"

    const-string v4, "!@*** End dumpStackTraces"

    .line 1277
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, v1, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "Watchdog"

    .line 1282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityController description:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1292
    :cond_14a
    iget-object v3, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1293
    :try_start_14d
    iget-object v6, v1, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 1296
    iget-object v9, v1, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    .line 1299
    monitor-exit v3
    :try_end_152
    .catchall {:try_start_14d .. :try_end_152} :catchall_2ba

    .line 1300
    sget-boolean v3, Lcom/android/server/Watchdog;->DEBUG_LEVEL_LOW:Z

    if-eqz v3, :cond_173

    if-eqz v6, :cond_173

    const-string v3, "Watchdog"

    const-string v10, "Reporting stuck state to activity controller"

    .line 1301
    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_15f
    const-string v3, "Service dumps disabled due to hung system process."

    .line 1303
    invoke-static {v3}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 1305
    invoke-interface {v6, v5}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_173

    const-string v3, "Watchdog"

    const-string v6, "!@ Activity controller requested to coninue to wait"

    .line 1307
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_171
    .catch Landroid/os/RemoteException; {:try_start_15f .. :try_end_171} :catch_173

    goto/16 :goto_6

    .line 1316
    :catch_173
    :cond_173
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v3

    if-eqz v3, :cond_17a

    move v0, v13

    :cond_17a
    if-lt v0, v13, :cond_185

    const-string v0, "Watchdog"

    const-string v3, "!@ Debugger connected: Watchdog is *not* killing the system process"

    .line 1320
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_185
    if-lez v0, :cond_190

    const-string v0, "Watchdog"

    const-string v3, "!@ Debugger was connected: Watchdog is *not* killing the system process"

    .line 1322
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_190
    if-nez v7, :cond_19b

    const-string v0, "Watchdog"

    const-string v3, "!@ Restart not allowed: Watchdog is *not* killing the system process"

    .line 1324
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_19b
    const-string v0, "Watchdog"

    .line 1326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "P|WD"

    .line 1329
    invoke-static {v0, v5}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Watchdog"

    .line 1330
    iget-object v3, v1, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1db

    .line 1332
    iget-object v0, v8, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "Watchdog"

    .line 1333
    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c9

    :cond_1db
    if-eqz v9, :cond_1f3

    const-string v0, "Watchdog"

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityController is set by "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_1f3
    iget-object v0, v1, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_235

    .line 1343
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPendingCmdedBroadcast()Ljava/util/ArrayList;

    move-result-object v0

    .line 1344
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_235

    const-string v3, "Watchdog"

    const-string/jumbo v5, "pending commanded broadcasts"

    .line 1345
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1346
    :goto_20a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_235

    const-string v5, "Watchdog"

    .line 1347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_20a

    .line 1352
    :cond_235
    invoke-static {v4}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->softdogTerminate()V

    .line 1357
    new-instance v0, Landroid/os/BugreportParams;

    const/16 v3, 0xc

    invoke-direct {v0, v3}, Landroid/os/BugreportParams;-><init>(I)V

    const-string/jumbo v3, "system_server"

    .line 1358
    invoke-static {v0, v3}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    .line 1362
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_286

    const-string v0, "Watchdog"

    .line 1363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@*** unFreezeAllPackages for watchdog debug! request time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    .line 1364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1363
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    const-string v3, "Watchdog"

    invoke-virtual {v0, v3}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    :cond_286
    const-string v0, "Watchdog"

    const-string v3, "!@*** GOODBYE!"

    .line 1369
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_2ac

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->isCrashLoopFound()Z

    move-result v0

    if-eqz v0, :cond_2ac

    .line 1371
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->should_ignore_fatal_count()Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2ac

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->breakCrashLoop()V

    .line 1374
    :cond_2ac
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    .line 1375
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_6

    :catchall_2ba
    move-exception v0

    .line 1299
    :try_start_2bb
    monitor-exit v3
    :try_end_2bc
    .catchall {:try_start_2bb .. :try_end_2bc} :catchall_2ba

    throw v0

    :catchall_2bd
    move-exception v0

    .line 1261
    :try_start_2be
    monitor-exit v8
    :try_end_2bf
    .catchall {:try_start_2be .. :try_end_2bf} :catchall_2bd

    throw v0
.end method

.method public final sendStatusInfoForBigData()V
    .registers 5

    .line 1021
    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    const-wide/16 v2, 0x2d0

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    return-void

    .line 1024
    :cond_c
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v1, "watchdogHqm"

    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3

    .line 755
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_3
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 757
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setActivityControllerDescription(Ljava/lang/String;)V
    .registers 2

    .line 1584
    monitor-enter p0

    .line 1585
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    .line 1586
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setAllowRestart(Z)V
    .registers 3

    .line 761
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 763
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final softdogInitialize()V
    .registers 3

    const-string/jumbo v0, "persist.vendor.softdog"

    .line 1592
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    .line 1593
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "Watchdog"

    const-string v0, "!@persist.vendor.softdog is off, so do not turn on softdog"

    .line 1594
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1597
    :cond_18
    invoke-direct {p0}, Lcom/android/server/Watchdog;->native_sdogOpen()I

    move-result v0

    if-ltz v0, :cond_26

    const/4 v0, 0x0

    .line 1598
    sput-boolean v0, Lcom/android/server/Watchdog;->mSoftdogDisabled:Z

    const/16 v0, 0x64

    .line 1599
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_sdogSetTimeout(I)V

    :cond_26
    return-void
.end method

.method public final softdogKick(I)V
    .registers 7

    .line 1604
    sget-boolean v0, Lcom/android/server/Watchdog;->mSoftdogDisabled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "Watchdog"

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_25

    .line 1608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ softdog timeout is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    sput p1, Lcom/android/server/Watchdog;->mSoftdogTimeout:I

    .line 1610
    invoke-direct {p0, p1}, Lcom/android/server/Watchdog;->native_sdogSetTimeout(I)V

    return-void

    .line 1613
    :cond_25
    sget-boolean p1, Lcom/android/server/Watchdog;->DEBUG_LEVEL_LOW:Z

    if-eqz p1, :cond_2d

    .line 1614
    invoke-direct {p0}, Lcom/android/server/Watchdog;->native_sdogKick()V

    return-void

    :cond_2d
    const/4 p1, 0x0

    .line 1620
    :try_start_2e
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/temp"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 1622
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :cond_46
    const/16 v2, 0x258

    const/16 v3, 0x64

    if-le p1, v2, :cond_5b

    .line 1624
    sget v2, Lcom/android/server/Watchdog;->mSoftdogTimeout:I

    if-ne v2, v3, :cond_5b

    .line 1627
    invoke-direct {p0, v1}, Lcom/android/server/Watchdog;->native_sdogSetTimeout(I)V

    .line 1628
    sput v1, Lcom/android/server/Watchdog;->mSoftdogTimeout:I

    const-string p1, "!@ set softdog timeout to 1000 by high temperature"

    .line 1629
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :cond_5b
    const/16 v2, 0x226

    if-ge p1, v2, :cond_6e

    .line 1630
    sget p1, Lcom/android/server/Watchdog;->mSoftdogTimeout:I

    if-ne p1, v1, :cond_6e

    .line 1632
    invoke-direct {p0, v3}, Lcom/android/server/Watchdog;->native_sdogSetTimeout(I)V

    .line 1633
    sput v3, Lcom/android/server/Watchdog;->mSoftdogTimeout:I

    const-string p1, "!@ set softdog timeout to 100"

    .line 1634
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 1636
    :cond_6e
    invoke-direct {p0}, Lcom/android/server/Watchdog;->native_sdogKick()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_71} :catch_72

    goto :goto_7b

    :catch_72
    move-exception p1

    const-string v1, "FileUtils"

    .line 1639
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1640
    invoke-direct {p0}, Lcom/android/server/Watchdog;->native_sdogKick()V

    :goto_7b
    return-void
.end method

.method public final softdogTerminate()V
    .registers 2

    .line 1646
    sget-boolean v0, Lcom/android/server/Watchdog;->mSoftdogDisabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 1649
    :cond_5
    invoke-direct {p0}, Lcom/android/server/Watchdog;->native_sdogClose()V

    const/4 p0, 0x1

    .line 1650
    sput-boolean p0, Lcom/android/server/Watchdog;->mSoftdogDisabled:Z

    return-void
.end method

.method public start()V
    .registers 1

    .line 652
    iget-object p0, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateWatchdogTimeout(J)V
    .registers 5

    const-wide/16 v0, 0x7530

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    const-wide/16 p1, 0x7531

    .line 720
    :cond_8
    iput-wide p1, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Watchdog timeout updated to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " millis"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Watchdog"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final writeTimeoutHistory(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, ","

    .line 1478
    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 1480
    :try_start_6
    new-instance p1, Ljava/io/FileWriter;

    const-string v0, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {p1, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_2d

    :try_start_d
    const-string/jumbo v0, "ro.boottime.zygote"

    .line 1481
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1482
    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_23

    .line 1484
    :try_start_1f
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    goto :goto_35

    :catchall_23
    move-exception p0

    .line 1480
    :try_start_24
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p1

    :try_start_29
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception p0

    const-string p1, "Watchdog"

    const-string v0, "Failed to write file /data/system/watchdog-timeout-history.txt"

    .line 1485
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return-void
.end method
