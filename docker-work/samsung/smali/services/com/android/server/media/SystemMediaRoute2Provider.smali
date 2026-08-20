.class public Lcom/android/server/media/SystemMediaRoute2Provider;
.super Lcom/android/server/media/MediaRoute2Provider;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;,
        Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_ROUTE_ID:Ljava/lang/String; = "DEFAULT_ROUTE"

.field public static final DEVICE_ROUTE_ID:Ljava/lang/String; = "DEVICE_ROUTE"

.field public static final HDMI_ROUTE_ID:Ljava/lang/String; = "HDMI"

.field public static final MUSIC_SHARE_ID:Ljava/lang/String; = "MUSIC_SHARE"

.field public static final SCREEN_MIRRORING_ID:Ljava/lang/String; = "SCREEN_MIRRORING"

.field public static final SYSTEM_SESSION_ID:Ljava/lang/String; = "SYSTEM_SESSION"

.field public static final TAG:Ljava/lang/String; = "MR2SystemProvider"

.field public static sComponentName:Landroid/content/ComponentName;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

.field public final mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

.field public final mContext:Landroid/content/Context;

.field public final mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field public mDefaultRoute:Landroid/media/MediaRoute2Info;

.field public mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

.field public mDeviceRoute:Landroid/media/MediaRoute2Info;

.field public mDeviceVolume:I

.field public final mHandler:Landroid/os/Handler;

.field public mHdmiRoute:Landroid/media/MediaRoute2Info;

.field public mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

.field public volatile mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRequestLock"
        }
    .end annotation
.end field

.field public final mRequestLock:Ljava/lang/Object;

.field public mRouterManager:Landroid/media/MediaRouter2Manager;

.field public mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

.field public mSelectedRouteId:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$3bFh87hsVMVGosnP8cbAGJna2BE(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->lambda$stop$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$8H6wTd2ETFzeGdNGYmuUlZjQbtI(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Fgo_GpH1Df_nFCSwLZNdqWvxjg8(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->lambda$new$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oL4ahMLFFWeanwn1DOb_FtV4tAo(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->lambda$postDeviceRoute$3(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/SystemMediaRoute2Provider;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpostDeviceRoute(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->postDeviceRoute(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDeviceRoute(Lcom/android/server/media/SystemMediaRoute2Provider;Landroid/media/AudioRoutesInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 71
    const-class v0, Lcom/android/server/media/SystemMediaRoute2Provider;

    const-string v1, "MR2SystemProvider"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    .line 84
    new-instance v1, Landroid/content/ComponentName;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/media/SystemMediaRoute2Provider;->sComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 6

    .line 118
    sget-object v0, Lcom/android/server/media/SystemMediaRoute2Provider;->sComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRoute2Provider;-><init>(Landroid/content/ComponentName;)V

    .line 94
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 97
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 517
    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 518
    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    .line 519
    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHdmiRoute:Landroid/media/MediaRoute2Info;

    const/4 v2, 0x1

    .line 120
    iput-boolean v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 121
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    .line 123
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    const-string p2, "audio"

    .line 125
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 126
    invoke-static {p2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioService:Landroid/media/IAudioService;

    .line 129
    invoke-static {p1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 133
    :try_start_54
    invoke-interface {p2, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_58} :catch_58

    .line 136
    :catch_58
    invoke-virtual {p0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V

    .line 139
    new-instance p2, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->createInstance(Landroid/content/Context;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)Lcom/android/server/media/BluetoothRouteProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/List;)V
    .registers 2

    .line 140
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->publishProviderState()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 142
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    :cond_c
    return-void
.end method

.method private synthetic lambda$postDeviceRoute$3(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5

    .line 562
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->buildDeviceRoute(Ljava/lang/String;Ljava/lang/String;ZI)Landroid/media/MediaRoute2Info;

    .line 563
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 564
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    return-void
.end method

.method private synthetic lambda$start$1()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->start(Landroid/os/UserHandle;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    return-void
.end method

.method private synthetic lambda$stop$2()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-virtual {v0}, Lcom/android/server/media/BluetoothRouteProvider;->stop()V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    return-void
.end method


# virtual methods
.method public final buildDeviceRoute(Ljava/lang/String;Ljava/lang/String;ZI)Landroid/media/MediaRoute2Info;
    .registers 7

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildDeviceRoute id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2SystemProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 525
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    move-object p2, p1

    .line 530
    :cond_38
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 531
    iget-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    iget v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    .line 534
    invoke-virtual {p2, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 535
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    .line 536
    invoke-virtual {p2, p4}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    const-string p4, "android.media.route.feature.LIVE_AUDIO"

    .line 537
    invoke-virtual {p2, p4}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    const-string p4, "android.media.route.feature.LIVE_VIDEO"

    .line 538
    invoke-virtual {p2, p4}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    const-string p4, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 539
    invoke-virtual {p2, p4}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    const/4 p4, 0x2

    .line 540
    invoke-virtual {p2, p4}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    .line 541
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p2

    const/4 p4, 0x0

    const-string v0, "MUSIC_SHARE"

    if-ne p1, v0, :cond_86

    if-eqz p3, :cond_83

    .line 545
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    goto :goto_91

    .line 547
    :cond_83
    iput-object p4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    goto :goto_91

    :cond_86
    const-string v0, "SCREEN_MIRRORING"

    if-ne p1, v0, :cond_91

    if-eqz p3, :cond_8f

    .line 551
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    goto :goto_91

    .line 553
    :cond_8f
    iput-object p4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    :cond_91
    :goto_91
    return-object p2
.end method

.method public deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public generateDeviceRouteSelectedSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    .line 275
    monitor-exit v0

    return-object p0

    .line 277
    :cond_e
    new-instance v1, Landroid/media/RoutingSessionInfo$Builder;

    const-string v2, "SYSTEM_SESSION"

    invoke-direct {v1, v2, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 278
    invoke-virtual {v1, p1}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p1

    .line 279
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 280
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v1, :cond_43

    .line 281
    invoke-virtual {v1}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 282
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_2f

    .line 285
    :cond_43
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_4f
    move-exception p0

    .line 286
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public getDefaultRoute()Landroid/media/MediaRoute2Info;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    return-object p0
.end method

.method public getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    return-object p0
.end method

.method public notifySessionInfoUpdated()V
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    if-nez v0, :cond_5

    return-void

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_8
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 440
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_18

    .line 442
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void

    :catchall_18
    move-exception p0

    .line 440
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final postDeviceRoute(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 13

    .line 561
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareReleaseSession(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public publishProviderState()V
    .registers 1

    .line 428
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 429
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    return-void
.end method

.method public releaseSession(JLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    const-string p3, "DEFAULT_ROUTE"

    .line 190
    invoke-static {p4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 191
    iget-object p3, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-object p4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-interface {p3, p0, p1, p2, p4}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    return-void

    .line 194
    :cond_10
    iget-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {p4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_27

    .line 195
    iget-object p3, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-object p4, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/RoutingSessionInfo;

    invoke-interface {p3, p0, p1, p2, p4}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    return-void

    .line 199
    :cond_27
    iget-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter p3

    .line 201
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    if-eqz v0, :cond_37

    .line 202
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    iget-wide v1, v1, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    invoke-interface {v0, p0, v1, v2, p5}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    .line 205
    :cond_37
    new-instance p5, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    invoke-direct {p5, p1, p2, p4}, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;-><init>(JLjava/lang/String;)V

    iput-object p5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    .line 206
    monitor-exit p3
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_45

    const-string p3, "SYSTEM_SESSION"

    .line 208
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_45
    move-exception p0

    .line 206
    :try_start_46
    monitor-exit p3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V
    .registers 2

    .line 180
    invoke-super {p0, p1}, Lcom/android/server/media/MediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    return-void
.end method

.method public setRouteVolume(JLjava/lang/String;I)V
    .registers 5

    .line 248
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 251
    :cond_9
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setSessionVolume(JLjava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public start()V
    .registers 7

    .line 149
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 150
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 152
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 153
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    .line 154
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v0, :cond_34

    .line 160
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v0, :cond_15

    .line 171
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p1, "DEFAULT_ROUTE"

    .line 233
    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 237
    :cond_9
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz p1, :cond_25

    .line 238
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 239
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->transferTo(Ljava/lang/String;)V

    goto :goto_25

    .line 241
    :cond_20
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-virtual {p0, p4}, Lcom/android/server/media/BluetoothRouteProvider;->transferTo(Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public final updateDeviceRoute(Landroid/media/AudioRoutesInfo;)V
    .registers 7

    const/4 v0, 0x3

    const v1, 0x1040416

    const/4 v2, 0x2

    if-eqz p1, :cond_39

    .line 293
    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v4, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v4, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 294
    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_15

    const/4 p1, 0x4

    goto :goto_3d

    :cond_15
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1b

    move p1, v0

    goto :goto_3d

    :cond_1b
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_25

    const/16 p1, 0xd

    const v1, 0x1040414

    goto :goto_3d

    :cond_25
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2f

    const/16 p1, 0x9

    const v1, 0x1040415

    goto :goto_3d

    :cond_2f
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_39

    const/16 p1, 0xb

    const v1, 0x1040417

    goto :goto_3d

    :cond_39
    const v1, 0x1040413

    move p1, v2

    .line 312
    :goto_3d
    new-instance v3, Landroid/media/MediaRoute2Info$Builder;

    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DEVICE_ROUTE"

    invoke-direct {v3, v4, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    .line 317
    invoke-virtual {v1, v3}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 318
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string v0, "android.media.route.feature.LIVE_AUDIO"

    .line 320
    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string v0, "android.media.route.feature.LIVE_VIDEO"

    .line 321
    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string v0, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 322
    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 323
    invoke-virtual {p1, v2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 325
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    return-void
.end method

.method public updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    .registers 2

    return-void
.end method

.method public final updateProviderState()V
    .registers 4

    .line 329
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    .line 330
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 333
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    if-eqz v1, :cond_11

    .line 334
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 336
    :cond_11
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    if-eqz v1, :cond_18

    .line 337
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 339
    :cond_18
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHdmiRoute:Landroid/media/MediaRoute2Info;

    if-eqz v1, :cond_1f

    .line 340
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 344
    :cond_1f
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v1, :cond_3b

    .line 345
    invoke-virtual {v1}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 346
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    goto :goto_2b

    .line 349
    :cond_3b
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 351
    sget-boolean p0, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz p0, :cond_5c

    .line 352
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating system provider info : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MR2SystemProvider"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return-void
.end method

.method public updateSessionInfosIfNeeded()Z
    .registers 10

    .line 360
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move-object v1, v2

    goto :goto_17

    :cond_f
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 364
    :goto_17
    new-instance v4, Landroid/media/RoutingSessionInfo$Builder;

    const-string v5, "SYSTEM_SESSION"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 366
    invoke-virtual {v4, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v4

    .line 368
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 369
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v7, :cond_3b

    .line 370
    invoke-virtual {v7}, Lcom/android/server/media/BluetoothRouteProvider;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object v7

    if-eqz v7, :cond_3b

    .line 373
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-object v6, v7

    .line 376
    :cond_3b
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    .line 377
    new-instance v7, Landroid/media/MediaRoute2Info$Builder;

    const-string v8, "DEFAULT_ROUTE"

    invoke-direct {v7, v8, v6}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 378
    invoke-virtual {v7, v5}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 379
    invoke-virtual {v6, v7}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v6

    .line 380
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 381
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 383
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v6, :cond_7d

    .line 384
    invoke-virtual {v6}, Lcom/android/server/media/BluetoothRouteProvider;->getTransferableRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_69
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRoute2Info;

    .line 385
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_69

    .line 389
    :cond_7d
    iget-object v6, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v4

    .line 391
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    if-eqz v6, :cond_b2

    .line 393
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_ff

    .line 394
    :try_start_8e
    iget-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    .line 395
    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationRequest:Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;

    .line 396
    monitor-exit v6
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_af

    if-eqz v7, :cond_b2

    .line 398
    :try_start_95
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteId:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRouteId:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 399
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-wide v6, v7, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    invoke-interface {v2, p0, v6, v7, v4}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    goto :goto_b2

    .line 402
    :cond_a7
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    iget-wide v6, v7, Lcom/android/server/media/SystemMediaRoute2Provider$SessionCreationRequest;->mRequestId:J

    invoke-interface {v2, p0, v6, v7, v3}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V
    :try_end_ae
    .catchall {:try_start_95 .. :try_end_ae} :catchall_ff

    goto :goto_b2

    :catchall_af
    move-exception p0

    .line 396
    :try_start_b0
    monitor-exit v6
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw p0

    .line 408
    :cond_b2
    :goto_b2
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 409
    monitor-exit v0

    return v3

    .line 411
    :cond_ba
    sget-boolean v1, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz v1, :cond_d4

    const-string v1, "MR2SystemProvider"

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating system routing session info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_d4
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 415
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v1, Landroid/media/RoutingSessionInfo$Builder;

    const-string v2, "SYSTEM_SESSION"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 418
    invoke-virtual {v1, v2}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    .line 419
    invoke-virtual {v1, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    const-string v2, "DEFAULT_ROUTE"

    .line 420
    invoke-virtual {v1, v2}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 422
    monitor-exit v0

    return v5

    :catchall_ff
    move-exception p0

    .line 424
    monitor-exit v0
    :try_end_101
    .catchall {:try_start_b1 .. :try_end_101} :catchall_ff

    throw p0
.end method

.method public updateVolume()V
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 457
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 459
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v2

    if-eq v2, v1, :cond_26

    .line 460
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v2, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 461
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    .line 462
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 465
    :cond_26
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mBtRouteProvider:Lcom/android/server/media/BluetoothRouteProvider;

    if-eqz v2, :cond_31

    invoke-virtual {v2, v0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->updateVolumeForDevices(II)Z

    move-result v0

    if-eqz v0, :cond_31

    return-void

    .line 468
    :cond_31
    iget v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    if-eq v0, v1, :cond_48

    .line 469
    iput v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceVolume:I

    .line 470
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 474
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->publishProviderState()V

    return-void
.end method
