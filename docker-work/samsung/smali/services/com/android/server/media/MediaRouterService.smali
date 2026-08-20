.class public final Lcom/android/server/media/MediaRouterService;
.super Landroid/media/IMediaRouterService$Stub;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterService$UserHandler;,
        Lcom/android/server/media/MediaRouterService$UserRecord;,
        Lcom/android/server/media/MediaRouterService$ClientGroup;,
        Lcom/android/server/media/MediaRouterService$ClientRecord;,
        Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final CONNECTED_TIMEOUT:J = 0xea60L

.field public static final CONNECTING_TIMEOUT:J = 0x1388L

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MediaRouterService"


# instance fields
.field public mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

.field public final mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

.field public final mAllClientRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouterService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field public mAudioRouteMainType:I

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mBluetoothA2dpRouteId:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDefaultAudioRouteId:Ljava/lang/String;

.field public mForceBluetoothA2dpOn:Z

.field public mGlobalBluetoothA2dpOn:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

.field public final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaRouterService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivePlayerMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForceBluetoothA2dpOn(Lcom/android/server/media/MediaRouterService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmForceBluetoothA2dpOn(Lcom/android/server/media/MediaRouterService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "MediaRouterService"

    const/4 v1, 0x3

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 129
    invoke-direct {p0}, Landroid/media/IMediaRouterService$Stub;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    .line 113
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    .line 115
    new-instance v1, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 117
    iput v1, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 118
    iput-boolean v1, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    .line 130
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-direct {v1, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 131
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040412

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    const v2, 0x104025d

    .line 136
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mBluetoothA2dpRouteId:Ljava/lang/String;

    const-string v1, "audio"

    .line 139
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    .line 140
    invoke-static {p1}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 141
    new-instance v3, Lcom/android/server/media/MediaRouterService$1;

    invoke-direct {v3, p0}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-virtual {v2, v3, v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 194
    :try_start_7e
    new-instance v0, Lcom/android/server/media/MediaRouterService$2;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouterService$2;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-interface {v1, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_86} :catch_87

    goto :goto_8e

    :catch_87
    const-string v0, "MediaRouterService"

    const-string v1, "RemoteException in the audio service."

    .line 231
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_8e
    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public clientDied(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 4

    .line 757
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_3
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 759
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5

    .line 654
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 4

    .line 550
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public final disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V
    .registers 4

    .line 956
    sget-boolean p0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz p0, :cond_31

    const-string p0, "MediaRouterService"

    if-eqz p2, :cond_1d

    .line 958
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Died!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 960
    :cond_1d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Unregistered"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_31
    :goto_31
    iget p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-nez p0, :cond_39

    iget-boolean p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eqz p0, :cond_41

    .line 964
    :cond_39
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 967
    :cond_41
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dispose()V

    return-void
.end method

.method public final disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 4

    .line 939
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v0, v1, :cond_2f

    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 940
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 941
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Disposed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_28
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2f
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 464
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string p3, "MediaRouterService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string p1, "MEDIA ROUTER SERVICE (dumpsys media_router)"

    .line 466
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "Global state"

    .line 468
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCurrentUserId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 472
    :try_start_31
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_38
    if-ge v0, p3, :cond_4d

    .line 474
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 475
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, ""

    .line 476
    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 478
    :cond_4d
    monitor-exit p1

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public enforceMediaContentControlPermission()V
    .registers 1

    .line 484
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->enforceMediaContentControlPermission()V

    return-void
.end method

.method public getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 575
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 5

    if-eqz p1, :cond_1a

    .line 332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 334
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    .line 335
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService;->getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object p0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_12
    move-exception p0

    .line 336
    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception p0

    .line 338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    throw p0

    .line 329
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 2

    .line 828
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p0, :cond_13

    .line 830
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$ClientRecord;->getState()Landroid/media/MediaRouterClientState;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemRoutes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 490
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getSystemRoutes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 3

    .line 496
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getSystemSessionInfo(Ljava/lang/String;Z)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSystemSessionInfoForPackage(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 6

    .line 582
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 583
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 585
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_f
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz p1, :cond_1c

    .line 588
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    goto :goto_20

    :cond_1c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 589
    :goto_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 590
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 591
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p1, 0x1

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    .line 597
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_4d

    .line 598
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getSystemSessionInfo(Ljava/lang/String;Z)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0

    :catchall_4d
    move-exception p0

    .line 597
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public final initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 2

    .line 950
    sget-boolean p0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz p0, :cond_1a

    .line 951
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": Registered"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouterService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method public final initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 4

    .line 926
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_1a
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget p0, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-ne v0, p0, :cond_26

    .line 930
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_26
    return-void
.end method

.method public isPlaybackActive(Landroid/media/IMediaRouterClient;)Z
    .registers 6

    if-eqz p1, :cond_31

    .line 349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 352
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_2c

    .line 353
    :try_start_9
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 354
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_29

    if-eqz p1, :cond_24

    .line 356
    :try_start_18
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2c

    .line 360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_24
    const/4 p0, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_29
    move-exception p0

    .line 354
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    throw p0

    .line 346
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public monitor()V
    .registers 2

    .line 254
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 15

    if-eqz p1, :cond_50

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 265
    invoke-virtual {p0, v7, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 269
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "registerClientAsUser"

    move v0, v8

    move v1, v7

    move v2, p3

    move-object v6, p2

    .line 270
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 272
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_29

    const/4 p3, 0x1

    goto :goto_2a

    :cond_29
    const/4 p3, 0x0

    :goto_2a
    move v6, p3

    .line 275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 277
    :try_start_2f
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_42

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v8

    move-object v4, p2

    .line 278
    :try_start_37
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaRouterService;->registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V

    .line 279
    monitor-exit p3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3f

    .line 281
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception p0

    .line 279
    :try_start_40
    monitor-exit p3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    .line 281
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    throw p0

    .line 266
    :cond_47
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "packageName must match the calling uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_2b

    .line 291
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "MediaRouterService"

    const-string p1, "Ignoring client group request because the client doesn\'t have the CONFIGURE_WIFI_DISPLAY permission."

    .line 294
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 300
    :try_start_18
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_26

    .line 301
    :try_start_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterService;->registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V

    .line 302
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_23

    .line 304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception p0

    .line 302
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw p0

    .line 289
    :cond_2b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .registers 4

    .line 792
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 793
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-nez p0, :cond_16

    const-string p0, "MediaRouterService"

    const-string p1, "Ignoring group id register request of a unregistered client."

    .line 795
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 798
    :cond_16
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    .line 801
    :cond_1f
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 802
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 803
    invoke-virtual {p1, v0, p0}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 805
    :cond_28
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz p2, :cond_3a

    .line 807
    invoke-virtual {p1, p2, p0}, Lcom/android/server/media/MediaRouterService$UserRecord;->addToGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 808
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 p1, 0xa

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 809
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    return-void
.end method

.method public final registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V
    .registers 22

    move-object v0, p0

    move/from16 v9, p5

    .line 764
    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 765
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-nez v1, :cond_5e

    .line 768
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    const/4 v11, 0x0

    if-nez v1, :cond_25

    .line 770
    new-instance v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-direct {v1, p0, v9}, Lcom/android/server/media/MediaRouterService$UserRecord;-><init>(Lcom/android/server/media/MediaRouterService;I)V

    const/4 v2, 0x1

    move-object v12, v1

    move v13, v2

    goto :goto_27

    :cond_25
    move-object v12, v1

    move v13, v11

    .line 773
    :goto_27
    new-instance v14, Lcom/android/server/media/MediaRouterService$ClientRecord;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouterService$ClientRecord;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/media/IMediaRouterClient;IILjava/lang/String;Z)V

    .line 775
    :try_start_39
    invoke-interface {v10, v14, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_54

    if-eqz v13, :cond_46

    .line 781
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 782
    invoke-virtual {p0, v12}, Lcom/android/server/media/MediaRouterService;->initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 785
    :cond_46
    iget-object v1, v12, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-virtual {p0, v14}, Lcom/android/server/media/MediaRouterService;->initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    goto :goto_5e

    :catch_54
    move-exception v0

    move-object v1, v0

    .line 777
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Media router client died prematurely."

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5e
    :goto_5e
    return-void
.end method

.method public registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .registers 4

    .line 604
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 605
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 608
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V

    return-void

    .line 606
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "packageName must match the calling uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 4

    .line 503
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 504
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 507
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "packageName must match the calling uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    .registers 4

    .line 675
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V

    return-void
.end method

.method public releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 3

    .line 569
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    return-void
.end method

.method public requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 5

    .line 640
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 16

    .line 535
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 7

    if-eqz p1, :cond_24

    if-eqz p2, :cond_1b

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 433
    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_16

    .line 434
    :try_start_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 435
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 437
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    .line 435
    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p0

    .line 437
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    throw p0

    .line 428
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "routeId must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 425
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 5

    .line 907
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 908
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p0, :cond_1b

    .line 910
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 911
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    return-void
.end method

.method public requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 7

    if-eqz p1, :cond_24

    if-eqz p2, :cond_1b

    .line 451
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 453
    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_16

    .line 454
    :try_start_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 455
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    .line 455
    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p0

    .line 457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    throw p0

    .line 448
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "routeId must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 445
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 5

    .line 917
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 918
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p0, :cond_1b

    .line 920
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 921
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    return-void
.end method

.method public restoreBluetoothA2dp()V
    .registers 5

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_48

    .line 684
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    const/4 v2, 0x0

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    move v1, v2

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    .line 689
    :goto_10
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 690
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_45

    if-eqz v3, :cond_3b

    .line 693
    :try_start_15
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_35

    const-string v0, "MediaRouterService"

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreBluetoothA2dp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_35
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, v1}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V

    goto :goto_4f

    .line 699
    :cond_3b
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_3e} :catch_48

    .line 700
    :try_start_3e
    iput-boolean v2, p0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    .line 701
    monitor-exit v0

    goto :goto_4f

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_42

    :try_start_44
    throw p0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_45} :catch_48

    :catchall_45
    move-exception p0

    .line 690
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_48} :catch_48

    :catch_48
    const-string p0, "MediaRouterService"

    const-string v0, "RemoteException while calling setBluetoothA2dpOn."

    .line 705
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return-void
.end method

.method public restoreRoute(I)V
    .registers 6

    .line 711
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 713
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 712
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz v1, :cond_32

    .line 714
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_32

    .line 715
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 716
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    .line 722
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_48

    if-eqz v2, :cond_44

    .line 725
    :try_start_36
    iget-object p0, v2, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {p0}, Landroid/media/IMediaRouterClient;->onRestoreRoute()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_47

    :catch_3c
    const-string p0, "MediaRouterService"

    const-string p1, "Failed to call onRestoreRoute. Client probably died."

    .line 727
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 730
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    :goto_47
    return-void

    :catchall_48
    move-exception p0

    .line 722
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5

    .line 647
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 4

    .line 543
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public setBluetoothA2dpOn(Landroid/media/IMediaRouterClient;Z)V
    .registers 6

    if-eqz p1, :cond_2d

    .line 371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 373
    :try_start_6
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, p2}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_11
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 377
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_f
    move-exception p0

    goto :goto_29

    :catch_11
    :try_start_11
    const-string p0, "MediaRouterService"

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while calling setBluetoothA2dpOn. on="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_f

    goto :goto_b

    :goto_28
    return-void

    .line 377
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    throw p0

    .line 368
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    .registers 7

    if-eqz p1, :cond_19

    .line 389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 391
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_14

    .line 392
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V

    .line 393
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 395
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    .line 393
    :try_start_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    :try_start_13
    throw p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception p0

    .line 395
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    throw p0

    .line 386
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V
    .registers 5

    .line 837
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 838
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p0, :cond_51

    .line 841
    iget-boolean p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-nez p1, :cond_14

    and-int/lit8 p2, p2, -0x5

    .line 845
    :cond_14
    iget p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-ne p1, p2, :cond_1c

    iget-boolean p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eq p1, p3, :cond_51

    .line 847
    :cond_1c
    sget-boolean p1, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz p1, :cond_45

    .line 848
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Set discovery request, routeTypes=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activeScan="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouterService"

    .line 848
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_45
    iput p2, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 852
    iput-boolean p3, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 853
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_51
    return-void
.end method

.method public setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    .line 520
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    .registers 5

    .line 633
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .registers 4

    .line 527
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 7

    if-eqz p1, :cond_19

    .line 411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 413
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_14

    .line 414
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V

    .line 415
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 417
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    .line 415
    :try_start_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    :try_start_13
    throw p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception p0

    .line 417
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    throw p0

    .line 408
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 7

    .line 861
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p1, :cond_b5

    .line 865
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mBluetoothA2dpRouteId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 866
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_27

    .line 867
    :cond_24
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    goto :goto_28

    :cond_27
    :goto_27
    move-object v0, v1

    .line 868
    :goto_28
    iput-object p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 869
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mBluetoothA2dpRouteId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    :cond_3a
    move-object p2, v1

    .line 872
    :cond_3b
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b5

    .line 873
    sget-boolean p0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz p0, :cond_6e

    .line 874
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Set selected route, routeId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oldRouteId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", explicit="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MediaRouterService"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    if-eqz p3, :cond_b5

    .line 881
    iget-boolean p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-eqz p0, :cond_b5

    if-eqz v0, :cond_82

    .line 883
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p3, 0x5

    invoke-virtual {p0, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 884
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_82
    if-eqz p2, :cond_90

    .line 887
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 888
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 890
    :cond_90
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz p0, :cond_b5

    .line 891
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaRouterService$UserRecord;->-$$Nest$fgetmClientGroupMap(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;

    move-result-object p0

    iget-object p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 892
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientGroup;

    if-eqz p0, :cond_b5

    .line 894
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 895
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 p2, 0xa

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 897
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_b5
    return-void
.end method

.method public setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    .registers 5

    .line 668
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V

    return-void
.end method

.method public setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .registers 4

    .line 563
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V

    return-void
.end method

.method public startScan(Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    .line 620
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->startScan(Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public stopScan(Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    .line 626
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->stopScan(Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public switchUser()V
    .registers 6

    .line 735
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 737
    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v2, v1, :cond_30

    .line 739
    iput v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 741
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz v2, :cond_20

    .line 743
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 744
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 747
    :cond_20
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz v1, :cond_30

    .line 749
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 752
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_37

    .line 753
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->switchUser()V

    return-void

    :catchall_37
    move-exception p0

    .line 752
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public systemRunning()V
    .registers 4

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/media/MediaRouterService$3;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaRouterService$3;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->switchUser()V

    return-void
.end method

.method public transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5

    .line 661
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 4

    .line 557
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public unregisterClient(Landroid/media/IMediaRouterClient;)V
    .registers 6

    if-eqz p1, :cond_1a

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 317
    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    const/4 v3, 0x0

    .line 318
    :try_start_a
    invoke-virtual {p0, p1, v3}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 319
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 321
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    .line 319
    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception p0

    .line 321
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    throw p0

    .line 312
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    .registers 5

    .line 814
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p1, :cond_25

    .line 816
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 817
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 818
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 819
    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    const/4 v1, 0x0

    .line 820
    iput-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 822
    :cond_1f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterService;->disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V

    .line 823
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    :cond_25
    return-void
.end method

.method public unregisterManager(Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    .line 614
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManager(Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public unregisterRouter2(Landroid/media/IMediaRouter2;)V
    .registers 2

    .line 513
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2(Landroid/media/IMediaRouter2;)V

    return-void
.end method

.method public final validatePackageName(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_20

    .line 972
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 974
    array-length p1, p0

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_20

    aget-object v2, p0, v1

    .line 975
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
