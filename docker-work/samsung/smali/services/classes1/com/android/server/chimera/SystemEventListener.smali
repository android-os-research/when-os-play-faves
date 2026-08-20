.class public Lcom/android/server/chimera/SystemEventListener;
.super Landroid/content/BroadcastReceiver;
.source "SystemEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;,
        Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;,
        Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;,
        Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;,
        Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;,
        Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;,
        Lcom/android/server/chimera/SystemEventListener$SwapNotEnoughListener;,
        Lcom/android/server/chimera/SystemEventListener$AppLaunchListener;,
        Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;,
        Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;,
        Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;,
        Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;,
        Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;,
        Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;
    }
.end annotation


# static fields
.field public static final ACTION_BOTTLENECK_HINT_FOR_CHIMERA:Ljava/lang/String; = "com.samsung.BOTTLENECK_HINT_FOR_CHIMERA"

.field public static final ACTION_ENTER_CAR_MODE:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE"

.field public static final ACTION_EXIT_CAR_MODE:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE"

.field public static final ACTION_KPM_STATE_CHANGED:Ljava/lang/String; = "com.samsung.KPM_STATE_CHANGED"

.field public static final ACTION_PMM_CRITICAL_TRIGGERED:Ljava/lang/String; = "com.samsung.PMM_CRITICAL_TRIGGER"

.field public static final KPM_LEVEL:Ljava/lang/String; = "kpm_level"

.field public static final MSG_APP_INTENT_LAUNCH:I = 0xb

.field public static final MSG_APP_LAUNCH:I = 0x9

.field public static final MSG_DEVICE_IDLE:I = 0xa

.field public static final MSG_ENTER_CAR_MODE:I = 0x6

.field public static final MSG_EXIT_CAR_MODE:I = 0x7

.field public static final MSG_HANDLE_BOTTLENECK_HINT:I = 0x2

.field public static final MSG_HANDLE_PMM_STATE_CHANGED:I = 0x3

.field public static final MSG_HOME_LAUNCH:I = 0x5

.field public static final MSG_LMKD_KILL:I = 0x4

.field public static final MSG_MEDIA_SCAN_FINISHED:I = 0x8

.field public static final MSG_PMM_CRITICAL:I = 0x1

.field public static final PMM_CRITICAL_TRIGGER_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.BROADCAST_PMM_CRITICAL_TRIGGER"

.field public static final TAG:Ljava/lang/String; = "SystemEventListener"

.field public static mFirstTriggeredAfterBooting:Z = false


# instance fields
.field public final mAppLaunchIntentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppLaunchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$AppLaunchListener;",
            ">;"
        }
    .end annotation
.end field

.field public mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

.field public final mBottleNeckHintListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mCarModeChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeviceIdleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

.field public final mHomeLaunchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLmkdEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mMediaScanFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mPmmCriticalListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mPmmStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessObserver:Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static synthetic $r8$lambda$BxDAzmDvi8Oyg7AnpYG62geypbY(Lcom/android/server/chimera/SystemEventListener;IIZI[Ljava/lang/String;Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/chimera/SystemEventListener;->lambda$new$0(IIZI[Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppLaunchIntentListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppLaunchListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBottleNeckHintListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mBottleNeckHintListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCarModeChangeListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceIdleListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/chimera/SystemEventListener;)Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHomeLaunchListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLmkdEventListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaScanFinishedListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPmmCriticalListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mPmmCriticalListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPmmStateChangeListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mPmmStateChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/SystemEventListener;)Lcom/android/server/chimera/SystemRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/chimera/SystemRepository;)V
    .registers 6

    .line 202
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mBottleNeckHintListeners:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mPmmCriticalListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mPmmStateChangeListeners:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchListeners:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    .line 211
    new-instance v0, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/SystemEventListener;)V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mProcessObserver:Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

    .line 265
    new-instance v0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;-><init>(Lcom/android/server/chimera/SystemEventListener;Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent-IA;)V

    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    .line 203
    iput-object p3, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 204
    new-instance p3, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-direct {p3, p0, p2}, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;-><init>(Lcom/android/server/chimera/SystemEventListener;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/SystemEventListener;->registerBroadcastReceivers(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/chimera/SystemEventListener;->createSocketServer()V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/chimera/SystemEventListener;->registerProcessObserver()V

    return-void
.end method

.method private synthetic lambda$new$0(IIZI[Ljava/lang/String;Z)V
    .registers 7

    if-eqz p3, :cond_36

    const/4 p1, 0x5

    if-eqz p6, :cond_1f

    .line 217
    iget-object p3, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-nez p3, :cond_36

    .line 219
    iget-object p3, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 220
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_36

    .line 223
    :cond_1f
    iget-object p2, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    const/16 p2, 0x9

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x0

    .line 225
    aget-object p2, p5, p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_36
    :goto_36
    return-void
.end method


# virtual methods
.method public addAppLaunchIntent()V
    .registers 2

    .line 325
    invoke-virtual {p0}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v0

    .line 326
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    invoke-interface {v0, p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public addAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V
    .registers 2

    .line 311
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAppLaunchListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchListener;)V
    .registers 2

    .line 299
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBottleNeckHintListener(Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;)V
    .registers 2

    .line 279
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mBottleNeckHintListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCameraDeviceStateCallback(Landroid/content/Context;)V
    .registers 3

    const-string v0, "camera"

    .line 319
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 320
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public addCarModeChangeListener(Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;)V
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V
    .registers 2

    .line 315
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHomeLaunchListener(Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;)V
    .registers 2

    .line 295
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLmkdEventListener(Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;)V
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMediaScanFinishedListener(Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;)V
    .registers 2

    .line 307
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPmmCriticalListener(Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;)V
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mPmmCriticalListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPmmStateChangeListener(Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;)V
    .registers 2

    .line 287
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mPmmStateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final createSocketServer()V
    .registers 3

    .line 236
    new-instance v0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;

    iget-object v1, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;-><init>(Lcom/android/server/chimera/SystemRepository;Landroid/os/Handler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    if-eqz p2, :cond_ef

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_ef

    .line 122
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive() - action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemEventListener"

    invoke-interface {v1, v3, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_f0

    :goto_36
    move v0, v7

    goto :goto_84

    :sswitch_38
    const-string v1, "com.samsung.PMM_CRITICAL_TRIGGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_36

    :cond_41
    move v0, v2

    goto :goto_84

    :sswitch_43
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_36

    :cond_4c
    const/4 v0, 0x5

    goto :goto_84

    :sswitch_4e
    const-string v1, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_36

    :cond_57
    const/4 v0, 0x4

    goto :goto_84

    :sswitch_59
    const-string v1, "android.app.action.EXIT_CAR_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_36

    :cond_62
    move v0, v4

    goto :goto_84

    :sswitch_64
    const-string v1, "android.app.action.ENTER_CAR_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_36

    :cond_6d
    move v0, v5

    goto :goto_84

    :sswitch_6f
    const-string v1, "com.samsung.BOTTLENECK_HINT_FOR_CHIMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_36

    :cond_78
    move v0, v6

    goto :goto_84

    :sswitch_7a
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_36

    :cond_83
    const/4 v0, 0x0

    :goto_84
    packed-switch v0, :pswitch_data_10e

    goto :goto_ef

    .line 137
    :pswitch_88
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ef

    :pswitch_8e
    const-string/jumbo p2, "power"

    .line 146
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_ef

    .line 148
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 150
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p2, "Device idle is true ! "

    invoke-interface {p1, v3, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ef

    .line 153
    :cond_ae
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "Device idle is false ! "

    invoke-interface {p0, v3, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ef

    :pswitch_b6
    const-string/jumbo p1, "kpm_level"

    .line 130
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v7, :cond_ef

    .line 132
    iget-object p2, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 133
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ef

    .line 143
    :pswitch_cf
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ef

    .line 140
    :pswitch_d6
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ef

    .line 126
    :pswitch_dc
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ef

    .line 159
    :pswitch_e2
    sget-boolean p1, Lcom/android/server/chimera/SystemEventListener;->mFirstTriggeredAfterBooting:Z

    if-nez p1, :cond_ef

    .line 160
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    sput-boolean v6, Lcom/android/server/chimera/SystemEventListener;->mFirstTriggeredAfterBooting:Z

    :cond_ef
    :goto_ef
    return-void

    :sswitch_data_f0
    .sparse-switch
        -0x4418042d -> :sswitch_7a
        -0x280a0b0a -> :sswitch_6f
        -0x1451e31f -> :sswitch_64
        -0x13ca081d -> :sswitch_59
        0x238412e -> :sswitch_4e
        0x33e5d967 -> :sswitch_43
        0x6ab75228 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_dc
        :pswitch_d6
        :pswitch_cf
        :pswitch_b6
        :pswitch_8e
        :pswitch_88
    .end packed-switch
.end method

.method public provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 269
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 270
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object p0

    return-object p0
.end method

.method public final registerBroadcastReceivers(Landroid/content/Context;)V
    .registers 5

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.BOTTLENECK_HINT_FOR_CHIMERA"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.KPM_STATE_CHANGED"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.ENTER_CAR_MODE"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.EXIT_CAR_MODE"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.PMM_CRITICAL_TRIGGER"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.permission.BROADCAST_PMM_CRITICAL_TRIGGER"

    const/4 v2, 0x0

    .line 177
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerProcessObserver()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mProcessObserver:Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

    invoke-interface {v0, p0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

    return-void
.end method

.method public removeAppLaunchIntent()V
    .registers 2

    .line 440
    invoke-virtual {p0}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v0

    .line 441
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    invoke-interface {v0, p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;->unregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public removeAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V
    .registers 2

    .line 354
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAppLaunchListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchListener;)V
    .registers 2

    .line 350
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeBottleNeckHintListener(Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;)V
    .registers 2

    .line 330
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mBottleNeckHintListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCameraDeviceStateCallback(Landroid/content/Context;)V
    .registers 3

    const-string v0, "camera"

    .line 434
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 435
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p0}, Lcom/android/server/chimera/SystemRepository;->getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    return-void
.end method

.method public removeCarModeChangeListener(Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;)V
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V
    .registers 2

    .line 358
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeHomeLaunchListener(Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;)V
    .registers 2

    .line 346
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLmkdEventListener(Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;)V
    .registers 2

    .line 342
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMediaScanFinishedListener(Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;)V
    .registers 2

    .line 430
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePmmCriticalListener(Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;)V
    .registers 2

    .line 334
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mPmmCriticalListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePmmStateChangeListener(Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;)V
    .registers 2

    .line 338
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mPmmStateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
