.class public final Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
.super Landroid/os/Handler;
.source "MediaRouter2ServiceImpl.java"

# interfaces
.implements Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;
.implements Lcom/android/server/media/MediaRoute2Provider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouter2ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserHandler"
.end annotation


# instance fields
.field public final mLastProviderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mRouteProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRoute2Provider;",
            ">;"
        }
    .end annotation
.end field

.field public mRunning:Z

.field public final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field public final mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final mSessionToRouterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

.field public final mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field public final mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;


# direct methods
.method public static synthetic $r8$lambda$-1wKm4LZbcOh3vgk3vbJjkCMKk4(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$updateDiscoveryPreferenceOnHandler$4(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$10HKBieAEdoL-2sUqTQwCLpMvw4(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Landroid/media/RouteDiscoveryPreference;
    .registers 1

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$updateDiscoveryPreferenceOnHandler$3(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BlvJKclcwWlp8CPpAUiMFIFJPBg(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;JI)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onRequestFailedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dx9Yd7uwjDMFDX7xUyuxtbVzicw(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$updateDiscoveryPreferenceOnHandler$2(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E05IHmTYE16-m9BPiK5Ztl5G9NU(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->updateDiscoveryPreferenceOnHandler()V

    return-void
.end method

.method public static synthetic $r8$lambda$EdiHHza2jiTwlIfUMIsAFSFmZRw(ILcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$maybeUpdateDiscoveryPreferenceForUid$0(ILcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ql47u_8r4_d74bv620QU10yO-hw(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onProviderStateChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XIF9oatYwLVC7vmfWhMOZ1ZfRm4(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreatedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bhV-YsWyLFIHVEnEuhuu1bisRNw(ILcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$maybeUpdateDiscoveryPreferenceForUid$1(ILcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kJWtxriKWmzBPKaC6Yp_JVj4kP8(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionInfoChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m3HtulDKW0XZVymgg8BjkdamlFs(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Landroid/media/RouteDiscoveryPreference;
    .registers 1

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$updateDiscoveryPreferenceOnHandler$5(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mCo8AjH0OUPTIR7ZsHOwgO4A3mc(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionReleasedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmRouteProviders(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdeselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->deselectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDiscoveryPreferenceChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyDiscoveryPreferenceChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDiscoveryPreferenceChangedToManagers(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyDiscoveryPreferenceChangedToManagers(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRequestFailedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRoutesToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesToManager(Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->releaseSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestCreateSessionWithRouter2OnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->requestCreateSessionWithRouter2OnHandler(JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestRouterCreateSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->requestRouterCreateSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->selectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRouteVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->setRouteVolumeOnHandler(JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSessionVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->setSessionVolumeOnHandler(JLjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->start()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstop(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->stop()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtransferToRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->transferToRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDiscoveryPreferenceOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->updateDiscoveryPreferenceOnHandler()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V
    .registers 7

    .line 1318
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 1309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 1310
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1312
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 1319
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 1320
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1321
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;

    move-result-object v2

    iget v3, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 1322
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/media/SystemMediaRoute2Provider;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;

    move-result-object p1

    iget p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    invoke-direct {v0, p1, p0, p0, p2}, Lcom/android/server/media/MediaRoute2ProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    return-void
.end method

.method public static synthetic lambda$maybeUpdateDiscoveryPreferenceForUid$0(ILcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z
    .registers 2

    .line 1417
    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static synthetic lambda$maybeUpdateDiscoveryPreferenceForUid$1(ILcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z
    .registers 2

    .line 1419
    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static synthetic lambda$updateDiscoveryPreferenceOnHandler$2(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z
    .registers 3

    .line 2184
    iget-boolean v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mIsScanning:Z

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mPackageName:Ljava/lang/String;

    .line 2185
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x7d

    if-gt p0, p1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static synthetic lambda$updateDiscoveryPreferenceOnHandler$3(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Landroid/media/RouteDiscoveryPreference;
    .registers 1

    .line 2190
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-object p0
.end method

.method public static synthetic lambda$updateDiscoveryPreferenceOnHandler$4(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z
    .registers 2

    .line 2195
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x7d

    if-gt p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$updateDiscoveryPreferenceOnHandler$5(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Landroid/media/RouteDiscoveryPreference;
    .registers 1

    .line 2197
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-object p0
.end method


# virtual methods
.method public final checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z
    .registers 10

    .line 1620
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1621
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    const-string v1, "Ignoring "

    const/4 v2, 0x0

    const-string v3, "MR2ServiceImpl"

    if-nez v0, :cond_2a

    .line 1623
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " route since no provider found for given route="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1629
    :cond_2a
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v4}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3c

    return v4

    .line 1633
    :cond_3c
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-eq p0, p1, :cond_6b

    .line 1635
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " route from non-matching router. packageName="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " route="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1640
    :cond_6b
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_86

    .line 1642
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to get original session id from unique session id. uniqueSessionId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_86
    return v4
.end method

.method public final deselectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 7

    const-string v0, "deselecting"

    .line 1582
    invoke-virtual {p0, p3, p4, p5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9

    return-void

    .line 1587
    :cond_9
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object p3

    .line 1588
    invoke-virtual {p0, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_14

    return-void

    .line 1593
    :cond_14
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1594
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object p4

    .line 1593
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .registers 4

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1402
    iget v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    if-ne v1, p1, :cond_8

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;
    .registers 4

    .line 2235
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRoute2Provider;

    .line 2236
    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .registers 2

    .line 1396
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    return-object p0
.end method

.method public final getAllRouters()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;"
        }
    .end annotation

    .line 1888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1889
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    if-nez v1, :cond_10

    return-object v0

    .line 1893
    :cond_10
    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1894
    :try_start_15
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1895
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1897
    :cond_2f
    monitor-exit v1

    return-object v0

    :catchall_31
    move-exception p0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final getLastProviderInfoIndex(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 1510
    :goto_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1511
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2ProviderInfo;

    .line 1512
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public final getManagerRecords()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;",
            ">;"
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    if-nez v0, :cond_f

    .line 1945
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1947
    :cond_f
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1948
    :try_start_14
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    .line 1949
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final getManagers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;"
        }
    .end annotation

    .line 1919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1920
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    if-nez v1, :cond_10

    return-object v0

    .line 1924
    :cond_10
    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1925
    :try_start_15
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1926
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1928
    :cond_2f
    monitor-exit v1

    return-object v0

    :catchall_31
    move-exception p0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final getRouterRecords()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;",
            ">;"
        }
    .end annotation

    .line 1933
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    if-nez v0, :cond_f

    .line 1935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1937
    :cond_f
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1938
    :try_start_14
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    .line 1939
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final getRouters(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;"
        }
    .end annotation

    .line 1902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1903
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    if-nez v1, :cond_10

    return-object v0

    .line 1907
    :cond_10
    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1908
    :try_start_15
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1909
    iget-boolean v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-ne p1, v3, :cond_1d

    .line 1911
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1914
    :cond_33
    monitor-exit v1

    return-object v0

    :catchall_35
    move-exception p0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final handleSessionCreationRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)Z
    .registers 11

    .line 1815
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1816
    iget-wide v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 1817
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    .line 1816
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-nez v1, :cond_2e

    const/4 p0, 0x0

    return p0

    .line 1828
    :cond_2e
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1832
    iget-wide v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_45

    .line 1833
    iget-object p1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1834
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p2

    .line 1833
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    goto :goto_5a

    .line 1836
    :cond_45
    invoke-static {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result p1

    .line 1837
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 1839
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    iget-wide p2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 1840
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p2

    .line 1839
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    :cond_5a
    :goto_5a
    const/4 p0, 0x1

    return p0
.end method

.method public init()V
    .registers 2

    .line 1329
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    return-void
.end method

.method public maybeUpdateDiscoveryPreferenceForUid(I)V
    .registers 6

    .line 1410
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    if-nez v0, :cond_b

    return-void

    .line 1415
    :cond_b
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1416
    :try_start_10
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 1418
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    or-int/2addr p1, v1

    .line 1420
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_43

    if-eqz p1, :cond_42

    .line 1422
    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_42
    return-void

    :catchall_43
    move-exception p0

    .line 1420
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final notifyDiscoveryPreferenceChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .registers 3

    .line 2130
    :try_start_0
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {p2, p0, p1}, Landroid/media/IMediaRouter2Manager;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "MR2ServiceImpl"

    const-string p2, "Failed to notify preferred features changed. Manager probably died."

    .line 2133
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public final notifyDiscoveryPreferenceChangedToManagers(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 6

    .line 2140
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    if-nez v0, :cond_b

    return-void

    .line 2144
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2145
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2146
    :try_start_15
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 2147
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 2149
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_4e

    .line 2150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/IMediaRouter2Manager;

    .line 2152
    :try_start_40
    invoke-interface {v0, p1, p2}, Landroid/media/IMediaRouter2Manager;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_34

    :catch_44
    move-exception v0

    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify preferred features changed. Manager probably died."

    .line 2155
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    :cond_4d
    return-void

    :catchall_4e
    move-exception p0

    .line 2149
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V
    .registers 4

    .line 2164
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/media/IMediaRouter2Manager;->notifyRequestFailed(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "MR2ServiceImpl"

    const-string p2, "Failed to notify manager of the request failure. Manager probably died."

    .line 2166
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public final notifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 8

    .line 1953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1956
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2ProviderInfo;

    .line 1958
    invoke-virtual {v3}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v5}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object v2, v3

    goto :goto_c

    .line 1963
    :cond_2a
    invoke-virtual {v3}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    .line 1967
    :cond_32
    iget-boolean v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    const-string v3, "MR2ServiceImpl"

    if-eqz v1, :cond_55

    if-eqz v2, :cond_42

    .line 1969
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_47

    :cond_42
    const-string v1, "System route provider not found."

    .line 1972
    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :goto_47
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RoutingSessionInfo;

    goto :goto_64

    .line 1976
    :cond_55
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1977
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    .line 1980
    :goto_64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6b

    return-void

    .line 1985
    :cond_6b
    :try_start_6b
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {p1, v0, p0}, Landroid/media/IMediaRouter2;->notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_70} :catch_71

    goto :goto_77

    :catch_71
    move-exception p0

    const-string p1, "Failed to notify router registered. Router probably died."

    .line 1988
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_77
    return-void
.end method

.method public final notifyRoutesAddedToManagers(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2053
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IMediaRouter2Manager;

    .line 2055
    :try_start_10
    invoke-interface {p1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRoutesAdded(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    const-string v0, "MR2ServiceImpl"

    const-string v1, "Failed to notify routes added. Manager probably died."

    .line 2057
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public final notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1994
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IMediaRouter2;

    .line 1996
    :try_start_10
    invoke-interface {p1, p2}, Landroid/media/IMediaRouter2;->notifyRoutesAdded(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    const-string v0, "MR2ServiceImpl"

    const-string v1, "Failed to notify routes added. Router probably died."

    .line 1998
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public final notifyRoutesChangedToManagers(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2075
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IMediaRouter2Manager;

    .line 2077
    :try_start_10
    invoke-interface {p1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRoutesChanged(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    const-string v0, "MR2ServiceImpl"

    const-string v1, "Failed to notify routes changed. Manager probably died."

    .line 2079
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public final notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2016
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IMediaRouter2;

    .line 2018
    :try_start_10
    invoke-interface {p1, p2}, Landroid/media/IMediaRouter2;->notifyRoutesChanged(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    const-string v0, "MR2ServiceImpl"

    const-string v1, "Failed to notify routes changed. Router probably died."

    .line 2020
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public final notifyRoutesRemovedToManagers(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2064
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IMediaRouter2Manager;

    .line 2066
    :try_start_10
    invoke-interface {p1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRoutesRemoved(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    const-string v0, "MR2ServiceImpl"

    const-string v1, "Failed to notify routes removed. Manager probably died."

    .line 2068
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public final notifyRoutesRemovedToRouters(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2005
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IMediaRouter2;

    .line 2007
    :try_start_10
    invoke-interface {p1, p2}, Landroid/media/IMediaRouter2;->notifyRoutesRemoved(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    const-string v0, "MR2ServiceImpl"

    const-string v1, "Failed to notify routes removed. Router probably died."

    .line 2009
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public final notifyRoutesToManager(Landroid/media/IMediaRouter2Manager;)V
    .registers 4

    .line 2037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2038
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2ProviderInfo;

    .line 2039
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 2041
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_26

    return-void

    .line 2045
    :cond_26
    :try_start_26
    invoke-interface {p1, v0}, Landroid/media/IMediaRouter2Manager;->notifyRoutesAdded(Ljava/util/List;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p0

    const-string p1, "MR2ServiceImpl"

    const-string v0, "Failed to notify all routes. Manager probably died."

    .line 2047
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method public final notifySessionCreatedToManagers(JLandroid/media/RoutingSessionInfo;)V
    .registers 7

    .line 2086
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v0

    .line 2087
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p1

    .line 2089
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 2091
    :try_start_1c
    iget-object v1, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 2092
    iget p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    if-ne p2, v0, :cond_24

    move p2, p1

    goto :goto_25

    :cond_24
    const/4 p2, 0x0

    .line 2091
    :goto_25
    invoke-interface {v1, p2, p3}, Landroid/media/IMediaRouter2Manager;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_28} :catch_29

    goto :goto_10

    :catch_29
    move-exception p2

    const-string v1, "MR2ServiceImpl"

    const-string/jumbo v2, "notifySessionCreatedToManagers: Failed to notify. Manager probably died."

    .line 2095
    invoke-static {v1, v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :cond_33
    return-void
.end method

.method public final notifySessionCreatedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;ILandroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 1849
    :try_start_0
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {p0, p2, p3}, Landroid/media/IMediaRouter2;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "MR2ServiceImpl"

    const-string p2, "Failed to notify router of the session creation. Router probably died."

    .line 1851
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public final notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .registers 3

    .line 1859
    :try_start_0
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Landroid/media/IMediaRouter2;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string p1, "MR2ServiceImpl"

    const-string p2, "Failed to notify router of the session creation failure. Router probably died."

    .line 1862
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method public final notifySessionInfoChangedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    .line 1870
    :try_start_0
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {p0, p2}, Landroid/media/IMediaRouter2;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "MR2ServiceImpl"

    const-string p2, "Failed to notify router of the session info change. Router probably died."

    .line 1872
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public final notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 2027
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IMediaRouter2;

    .line 2029
    :try_start_10
    invoke-interface {p1, p2}, Landroid/media/IMediaRouter2;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    const-string v0, "MR2ServiceImpl"

    const-string v1, "Failed to notify session info changed. Router probably died."

    .line 2031
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public final notifySessionReleasedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 2117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IMediaRouter2Manager;

    .line 2119
    :try_start_10
    invoke-interface {p1, p2}, Landroid/media/IMediaRouter2Manager;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    const-string v0, "MR2ServiceImpl"

    const-string/jumbo v1, "notifySessionReleasedToManagers: Failed to notify. Manager probably died."

    .line 2121
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1e
    return-void
.end method

.method public final notifySessionReleasedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    .line 1880
    :try_start_0
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {p0, p2}, Landroid/media/IMediaRouter2;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "MR2ServiceImpl"

    const-string p2, "Failed to notify router of the session release. Router probably died."

    .line 1882
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public final notifySessionUpdatedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 2104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IMediaRouter2Manager;

    .line 2106
    :try_start_10
    invoke-interface {p1, p2}, Landroid/media/IMediaRouter2Manager;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception p1

    const-string v0, "MR2ServiceImpl"

    const-string/jumbo v1, "notifySessionUpdatedToManagers: Failed to notify. Manager probably died."

    .line 2108
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1e
    return-void
.end method

.method public onAddProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .registers 3

    .line 1350
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 1351
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public onProviderStateChanged(Lcom/android/server/media/MediaRoute2Provider;)V
    .registers 3

    .line 1362
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onProviderStateChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;)V
    .registers 11

    .line 1428
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getLastProviderInfoIndex(Ljava/lang/String;)I

    move-result v0

    .line 1429
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v1

    if-gez v0, :cond_10

    const/4 v2, 0x0

    goto :goto_18

    .line 1431
    :cond_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderInfo;

    .line 1432
    :goto_18
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return-void

    .line 1434
    :cond_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_3e

    .line 1438
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1439
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c2

    :cond_3e
    if-nez v1, :cond_4e

    .line 1441
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1442
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c2

    .line 1444
    :cond_4e
    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1445
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    .line 1446
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    .line 1448
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5e
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 1449
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->isValid()Z

    move-result v7

    if-nez v7, :cond_88

    .line 1450
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onProviderStateChangedOnHandler: Ignoring invalid route : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MR2ServiceImpl"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1454
    :cond_88
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/media/MediaRoute2ProviderInfo;->getRoute(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v7

    if-nez v7, :cond_96

    .line 1456
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1457
    :cond_96
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 1458
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1462
    :cond_a0
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a8
    :goto_a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 1463
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/media/MediaRoute2ProviderInfo;->getRoute(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v7

    if-nez v7, :cond_a8

    .line 1464
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_c2
    :goto_c2
    const/4 v0, 0x1

    .line 1469
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1470
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v1

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    move-result-object v6

    .line 1472
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    iget-object v8, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v8}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f7

    .line 1476
    invoke-virtual {p0, v0, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1477
    iget-boolean v8, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v8, :cond_ef

    .line 1478
    invoke-virtual {p0, v1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V

    goto :goto_f4

    :cond_ef
    if-nez v2, :cond_f4

    .line 1481
    invoke-virtual {p0, v1, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1484
    :cond_f4
    :goto_f4
    invoke-virtual {p0, v6, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToManagers(Ljava/util/List;Ljava/util/List;)V

    .line 1486
    :cond_f7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10a

    .line 1487
    invoke-virtual {p0, v0, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesRemovedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1489
    iget-boolean v3, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v3, :cond_107

    .line 1490
    invoke-virtual {p0, v1, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesRemovedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1493
    :cond_107
    invoke-virtual {p0, v6, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesRemovedToManagers(Ljava/util/List;Ljava/util/List;)V

    .line 1495
    :cond_10a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_123

    .line 1496
    invoke-virtual {p0, v0, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1498
    iget-boolean p1, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez p1, :cond_11b

    .line 1499
    invoke-virtual {p0, v1, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V

    goto :goto_120

    :cond_11b
    if-eqz v2, :cond_120

    .line 1502
    invoke-virtual {p0, v1, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1505
    :cond_120
    :goto_120
    invoke-virtual {p0, v6, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToManagers(Ljava/util/List;Ljava/util/List;)V

    :cond_123
    return-void
.end method

.method public onRemoveProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .registers 2

    .line 1357
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V
    .registers 6

    .line 1390
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda5;-><init>()V

    .line 1391
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1390
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onRequestFailedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JI)V
    .registers 5

    .line 1795
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->handleSessionCreationRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 1799
    :cond_7
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result p1

    .line 1800
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1802
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 1803
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p2

    .line 1802
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    :cond_1a
    return-void
.end method

.method public onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 1369
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda11;-><init>()V

    .line 1370
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 1369
    invoke-static {v0, p0, p1, p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onSessionCreatedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .registers 9

    .line 1709
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1710
    iget-wide v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 1712
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    .line 1711
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-nez v1, :cond_2f

    const-wide/16 v2, 0x0

    goto :goto_31

    .line 1720
    :cond_2f
    iget-wide v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 1721
    :goto_31
    invoke-virtual {p0, v2, v3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToManagers(JLandroid/media/RoutingSessionInfo;)V

    const-string p1, "MR2ServiceImpl"

    if-nez v1, :cond_55

    .line 1724
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring session creation result for unknown request. uniqueRequestId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", sessionInfo="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1729
    :cond_55
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1731
    iget-object v0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 1732
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 1734
    iget-object p1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2Provider;->prepareReleaseSession(Ljava/lang/String;)V

    goto :goto_87

    .line 1736
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionCreatedOnHandler: Can\'t find provider for an old session. session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :goto_87
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result p1

    if-eqz p1, :cond_a1

    iget-object p1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    iget-boolean v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v0, :cond_a1

    .line 1744
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p2

    iget-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1745
    invoke-virtual {p3}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p3

    .line 1743
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;ILandroid/media/RoutingSessionInfo;)V

    goto :goto_aa

    .line 1747
    :cond_a1
    iget-object p1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1748
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p2

    .line 1747
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;ILandroid/media/RoutingSessionInfo;)V

    .line 1750
    :goto_aa
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onSessionInfoChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    move-result-object v0

    .line 1756
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionUpdatedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1759
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    if-ne p1, v0, :cond_2d

    .line 1760
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    if-nez p1, :cond_16

    return-void

    :cond_16
    const/4 p1, 0x1

    .line 1764
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    const/4 p1, 0x0

    .line 1765
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1766
    invoke-virtual {p2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p2

    .line 1765
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    return-void

    .line 1770
    :cond_2d
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez p1, :cond_53

    .line 1772
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onSessionInfoChangedOnHandler: No matching router found for session="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2ServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1776
    :cond_53
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public onSessionReleased(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 1383
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onSessionReleasedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    move-result-object p1

    .line 1782
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionReleasedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1784
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez p1, :cond_2d

    .line 1786
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onSessionReleasedOnHandler: No matching router found for session="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2ServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1790
    :cond_2d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionReleasedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 1376
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final releaseSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 8

    .line 1673
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    const-string v1, "MR2ServiceImpl"

    if-eq v0, p3, :cond_2f

    .line 1675
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring releasing session from non-matching router. packageName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1a

    const/4 p1, 0x0

    goto :goto_1c

    .line 1676
    :cond_1a
    iget-object p1, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    :goto_1c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uniqueSessionId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1675
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1681
    :cond_2f
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Ignoring releasing session with invalid unique session ID. uniqueSessionId="

    if-nez p3, :cond_4a

    .line 1683
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1688
    :cond_4a
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6b

    .line 1690
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " providerId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1695
    :cond_6b
    invoke-virtual {p0, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_86

    .line 1697
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring releasing session since no provider found for given providerId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1702
    :cond_86
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/media/MediaRoute2Provider;->releaseSession(JLjava/lang/String;)V

    return-void
.end method

.method public final requestCreateSessionWithRouter2OnHandler(JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 22

    move-object v0, p0

    move-object/from16 v9, p5

    .line 1543
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v10

    if-nez v10, :cond_2e

    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCreateSessionWithRouter2OnHandler: Ignoring session creation request since no provider found for given route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p7

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2ServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v1

    .line 1547
    invoke-virtual {p0, v9, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void

    :cond_2e
    move-object/from16 v11, p7

    .line 1552
    new-instance v12, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    move-object v1, v12

    move-object/from16 v2, p5

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 1555
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    iget-object v5, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 1558
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v6

    move-object v2, v10

    move-object/from16 v7, p8

    .line 1557
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/media/MediaRoute2Provider;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final requestRouterCreateSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 8

    .line 1523
    :try_start_0
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v0, :cond_16

    .line 1524
    iget-object p3, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    iget-object p6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1525
    invoke-virtual {p6}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object p6

    .line 1524
    invoke-interface {p3, p1, p2, p5, p6}, Landroid/media/IMediaRouter2;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_2f

    .line 1527
    :cond_16
    iget-object p3, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {p3, p1, p2, p5, p6}, Landroid/media/IMediaRouter2;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_2f

    :catch_1c
    move-exception p3

    const-string p5, "MR2ServiceImpl"

    const-string/jumbo p6, "getSessionHintsForCreatingSessionOnHandler: Failed to request. Router probably died."

    .line 1531
    invoke-static {p5, p6, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1533
    iget-object p3, p4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 1534
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p1

    const/4 p2, 0x0

    .line 1533
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    :goto_2f
    return-void
.end method

.method public final selectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 7

    const-string/jumbo v0, "selecting"

    .line 1564
    invoke-virtual {p0, p3, p4, p5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a

    return-void

    .line 1569
    :cond_a
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object p3

    .line 1570
    invoke-virtual {p0, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_15

    return-void

    .line 1574
    :cond_15
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1575
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object p4

    .line 1574
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRouteVolumeOnHandler(JLandroid/media/MediaRoute2Info;I)V
    .registers 6

    .line 1652
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_22

    .line 1654
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setRouteVolumeOnHandler: Couldn\'t find provider for route="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2ServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1657
    :cond_22
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider;->setRouteVolume(JLjava/lang/String;I)V

    return-void
.end method

.method public final setSessionVolumeOnHandler(JLjava/lang/String;I)V
    .registers 6

    .line 1662
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_22

    .line 1664
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSessionVolumeOnHandler: Couldn\'t find provider for session id="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2ServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1668
    :cond_22
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider;->setSessionVolume(JLjava/lang/String;I)V

    return-void
.end method

.method public final start()V
    .registers 2

    .line 1333
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 1334
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 1335
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->start()V

    .line 1336
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->start()V

    :cond_11
    return-void
.end method

.method public final stop()V
    .registers 2

    .line 1341
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 1342
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 1343
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->stop()V

    .line 1344
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->stop()V

    :cond_11
    return-void
.end method

.method public final transferToRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 7

    const-string/jumbo v0, "transferring to"

    .line 1601
    invoke-virtual {p0, p3, p4, p5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a

    return-void

    .line 1606
    :cond_a
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object p3

    .line 1607
    invoke-virtual {p0, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_15

    return-void

    .line 1611
    :cond_15
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1612
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object p4

    .line 1611
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateDiscoveryPreferenceOnHandler()V
    .registers 8

    .line 2172
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    if-nez v0, :cond_b

    return-void

    .line 2176
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords()Ljava/util/List;

    move-result-object v2

    .line 2178
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v3

    .line 2182
    iget-object v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_68

    .line 2183
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2189
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda1;-><init>()V

    .line 2190
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 2191
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    goto :goto_69

    .line 2194
    :cond_48
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda3;-><init>()V

    .line 2197
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 2198
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :cond_68
    move v2, v5

    .line 2202
    :goto_69
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6f
    :goto_6f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRoute2Provider;

    .line 2203
    instance-of v6, v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    if-eqz v6, :cond_6f

    .line 2204
    check-cast v4, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 2205
    invoke-virtual {v4, v2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setManagerScanning(Z)V

    goto :goto_6f

    .line 2214
    :cond_85
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2216
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RouteDiscoveryPreference;

    .line 2217
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2218
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->shouldPerformActiveScan()Z

    move-result v3

    or-int/2addr v5, v3

    goto :goto_8e

    .line 2220
    :cond_a7
    new-instance v1, Landroid/media/RouteDiscoveryPreference$Builder;

    .line 2221
    invoke-static {v2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v1

    .line 2223
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2224
    :try_start_b9
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v1, v2}, Landroid/media/RouteDiscoveryPreference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 2225
    monitor-exit v0

    return-void

    .line 2227
    :cond_c5
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iput-object v1, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 2228
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_b9 .. :try_end_ca} :catchall_e5

    .line 2229
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRoute2Provider;

    .line 2230
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaRoute2Provider;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    goto :goto_d0

    :cond_e4
    return-void

    :catchall_e5
    move-exception p0

    .line 2228
    :try_start_e6
    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw p0
.end method
