.class public final Landroid/media/MediaRouter2Manager;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2Manager$Client;,
        Landroid/media/MediaRouter2Manager$TransferRequest;,
        Landroid/media/MediaRouter2Manager$CallbackRecord;,
        Landroid/media/MediaRouter2Manager$Callback;
    }
.end annotation


# static fields
.field public static final blacklist REQUEST_ID_NONE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "MR2Manager"

.field public static final blacklist TRANSFER_TIMEOUT_MS:I = 0x7530

.field private static blacklist sInstance:Landroid/media/MediaRouter2Manager;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field final blacklist mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2Manager$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClient:Landroid/media/MediaRouter2Manager$Client;

.field private final blacklist mContext:Landroid/content/Context;

.field final blacklist mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Landroid/media/RouteDiscoveryPreference;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mMediaRouterService:Landroid/media/IMediaRouterService;

.field private final blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final blacklist mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRoutesLock:Ljava/lang/Object;

.field private final blacklist mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2Manager$TransferRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$4_ivctd76zRkMuxtdONtRid6dQc(Landroid/media/MediaRouter2Manager;Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2Manager;->handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6CaLroIN47dcx97REg4--u3cVRg(Landroid/media/MediaRouter2Manager;)Landroid/media/MediaRouter2Manager$Client;
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2Manager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mContext:Landroid/content/Context;

    .line 116
    nop

    .line 117
    const-string v1, "media_router"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 118
    nop

    .line 119
    const-string v1, "media_session"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    iput-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mPackageName:Ljava/lang/String;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v1, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRouter2Manager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method private blacklist areSessionsMatched(Landroid/media/session/MediaController;Landroid/media/RoutingSessionInfo;)Z
    .registers 9
    .param p1, "mediaController"    # Landroid/media/session/MediaController;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 952
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 953
    .local v0, "playbackInfo":Landroid/media/session/MediaController$PlaybackInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 954
    return v1

    .line 957
    :cond_8
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, "volumeControlId":Ljava/lang/String;
    if-nez v2, :cond_f

    .line 959
    return v1

    .line 962
    :cond_f
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    .line 963
    return v4

    .line 966
    :cond_1b
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 967
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 968
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v5

    .line 967
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    move v1, v4

    goto :goto_36

    :cond_35
    nop

    .line 966
    :goto_36
    return v1
.end method

.method private blacklist createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I
    .registers 9
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 932
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 933
    .local v0, "requestId":I
    new-instance v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    invoke-direct {v1, v0, p1, p2}, Landroid/media/MediaRouter2Manager$TransferRequest;-><init>(ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 934
    .local v1, "transferRequest":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    new-instance v2, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda14;-><init>()V

    .line 937
    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 938
    .local v2, "timeoutMessage":Landroid/os/Message;
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 939
    return v0
.end method

.method private blacklist getFilteredRoutes(Landroid/media/RoutingSessionInfo;ZLjava/util/function/Predicate;)Ljava/util/List;
    .registers 12
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "includeSelectedRoutes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 302
    .local p3, "additionalFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/media/MediaRoute2Info;>;"
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 307
    .local v1, "deduplicationIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    sget-object v4, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    .line 309
    invoke-interface {v3, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RouteDiscoveryPreference;

    .line 311
    .local v3, "discoveryPreference":Landroid/media/RouteDiscoveryPreference;
    invoke-direct {p0, v3}, Landroid/media/MediaRouter2Manager;->getSortedRoutes(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 312
    .local v5, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f

    if-eqz p2, :cond_50

    .line 314
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_9f

    .line 318
    :cond_50
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 319
    goto :goto_25

    .line 321
    :cond_5b
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7a

    .line 322
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 323
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v6

    .line 324
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 325
    goto :goto_25

    .line 327
    :cond_7a
    if-eqz p3, :cond_83

    invoke-interface {p3, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_83

    .line 328
    goto :goto_25

    .line 330
    :cond_83
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 331
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 332
    goto :goto_25

    .line 334
    :cond_94
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 336
    :cond_9b
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_25

    .line 315
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    :cond_9f
    :goto_9f
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    goto :goto_25

    .line 338
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    :cond_a3
    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    sget-object v0, Landroid/media/MediaRouter2Manager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_8
    sget-object v1, Landroid/media/MediaRouter2Manager;->sInstance:Landroid/media/MediaRouter2Manager;

    if-nez v1, :cond_13

    .line 108
    new-instance v1, Landroid/media/MediaRouter2Manager;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter2Manager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter2Manager;->sInstance:Landroid/media/MediaRouter2Manager;

    .line 110
    :cond_13
    sget-object v1, Landroid/media/MediaRouter2Manager;->sInstance:Landroid/media/MediaRouter2Manager;

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;
    .registers 6

    .line 972
    sget-object v0, Landroid/media/MediaRouter2Manager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    if-eqz v1, :cond_9

    .line 974
    monitor-exit v0

    return-object v1

    .line 976
    :cond_9
    new-instance v1, Landroid/media/MediaRouter2Manager$Client;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter2Manager$Client;-><init>(Landroid/media/MediaRouter2Manager;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_25

    .line 978
    .local v1, "client":Landroid/media/MediaRouter2Manager$Client;
    :try_start_e
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Landroid/media/IMediaRouterService;->registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V

    .line 979
    iput-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19
    .catchall {:try_start_e .. :try_end_17} :catchall_25

    .line 980
    :try_start_17
    monitor-exit v0

    return-object v1

    .line 981
    :catch_19
    move-exception v2

    .line 982
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2Manager"

    const-string v4, "Unable to register media router manager."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    nop

    .end local v1    # "client":Landroid/media/MediaRouter2Manager$Client;
    .end local v2    # "ex":Landroid/os/RemoteException;
    monitor-exit v0

    .line 985
    const/4 v0, 0x0

    return-object v0

    .line 984
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private blacklist getSortedRoutes(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 7
    .param p1, "preference"    # Landroid/media/RouteDiscoveryPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RouteDiscoveryPreference;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v0

    if-nez v0, :cond_18

    .line 279
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_9
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 281
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1

    .line 283
    :cond_18
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 284
    .local v0, "packagePriority":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 285
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_3e

    .line 287
    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 290
    .end local v2    # "i":I
    :cond_3e
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_41
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    .local v3, "routes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRoute2Info;>;"
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_5a

    .line 294
    new-instance v2, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda11;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 296
    return-object v3

    .line 292
    .end local v3    # "routes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRoute2Info;>;"
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method private blacklist handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 943
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 944
    .local v0, "removed":Z
    if-eqz v0, :cond_f

    .line 945
    iget-object v1, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object v2, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 947
    :cond_f
    return-void
.end method

.method static synthetic blacklist lambda$getDeselectableRoutes$12(Ljava/util/List;Ljava/lang/String;)Z
    .registers 3
    .param p0, "selectedRouteIds"    # Ljava/util/List;
    .param p1, "routeId"    # Ljava/lang/String;

    .line 773
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getSelectableRoutes$11(Ljava/util/List;Ljava/lang/String;)Z
    .registers 3
    .param p0, "selectedRouteIds"    # Ljava/util/List;
    .param p1, "routeId"    # Ljava/lang/String;

    .line 755
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$getSortedRoutes$1(Ljava/util/Map;Landroid/media/MediaRoute2Info;)I
    .registers 4
    .param p0, "packagePriority"    # Ljava/util/Map;
    .param p1, "r"    # Landroid/media/MediaRoute2Info;

    .line 295
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method static synthetic blacklist lambda$getTransferableRoutes$0(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)Z
    .registers 4
    .param p0, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 274
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$notifyRequestFailed$7(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2Manager$CallbackRecord;
    .param p1, "reason"    # I

    .line 698
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesAdded$2(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/util/List;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2Manager$CallbackRecord;
    .param p1, "routes"    # Ljava/util/List;

    .line 666
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onRoutesAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesChanged$4(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/util/List;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2Manager$CallbackRecord;
    .param p1, "routes"    # Ljava/util/List;

    .line 680
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onRoutesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesRemoved$3(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/util/List;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2Manager$CallbackRecord;
    .param p1, "routes"    # Ljava/util/List;

    .line 673
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onRoutesRemoved(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifySessionReleased$6(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2Manager$CallbackRecord;
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 692
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onSessionReleased(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifySessionUpdated$5(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2Manager$CallbackRecord;
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 686
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onSessionUpdated(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferFailed$9(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p0, "record"    # Landroid/media/MediaRouter2Manager$CallbackRecord;
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 710
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferred$8(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p0, "record"    # Landroid/media/MediaRouter2Manager$CallbackRecord;
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "newSession"    # Landroid/media/RoutingSessionInfo;

    .line 704
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateDiscoveryPreference$10(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 4
    .param p0, "record"    # Landroid/media/MediaRouter2Manager$CallbackRecord;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 725
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    .line 726
    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    .line 725
    return-void
.end method

.method private blacklist notifyRoutesAdded(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 664
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 665
    .local v1, "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 667
    .end local v1    # "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    goto :goto_6

    .line 668
    :cond_1d
    return-void
.end method

.method private blacklist notifyRoutesChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 678
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 679
    .local v1, "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 681
    .end local v1    # "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    goto :goto_6

    .line 682
    :cond_1d
    return-void
.end method

.method private blacklist notifyRoutesRemoved(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 671
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 672
    .local v1, "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda6;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 674
    .end local v1    # "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    goto :goto_6

    .line 675
    :cond_1d
    return-void
.end method

.method private blacklist requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 912
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MR2Manager"

    if-eqz v0, :cond_15

    .line 913
    const-string v0, "requestCreateSession: Can\'t create a session without package name."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 915
    return-void

    .line 918
    :cond_15
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v0

    .line 920
    .local v0, "requestId":I
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v2

    .line 921
    .local v2, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v2, :cond_2b

    .line 923
    :try_start_1f
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-interface {v3, v2, v0, p1, p2}, Landroid/media/IMediaRouterService;->requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    .line 927
    goto :goto_2b

    .line 925
    :catch_25
    move-exception v3

    .line 926
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, "requestCreateSession: Failed to send a request"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    return-void
.end method

.method private blacklist transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 898
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v0

    .line 900
    .local v0, "requestId":I
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v1

    .line 901
    .local v1, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v1, :cond_1d

    .line 903
    :try_start_a
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 904
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 903
    invoke-interface {v2, v1, v0, v3, p2}, Landroid/media/IMediaRouterService;->transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 907
    goto :goto_1d

    .line 905
    :catch_14
    move-exception v2

    .line 906
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2Manager"

    const-string/jumbo v4, "transferToRoute: Failed to send a request."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method blacklist addRoutesOnHandler(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 560
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 562
    .local v2, "route":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    nop

    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_7

    .line 564
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_29

    .line 565
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 566
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2Manager;->notifyRoutesAdded(Ljava/util/List;)V

    .line 568
    :cond_28
    return-void

    .line 564
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method blacklist changeRoutesOnHandler(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 582
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 584
    .local v2, "route":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    nop

    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_7

    .line 586
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_29

    .line 587
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 588
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2Manager;->notifyRoutesChanged(Ljava/util/List;)V

    .line 590
    :cond_28
    return-void

    .line 586
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method blacklist createSessionOnHandler(ILandroid/media/RoutingSessionInfo;)V
    .registers 9
    .param p1, "requestId"    # I
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "matchingRequest":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 595
    .local v2, "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget v3, v2, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v3, p1, :cond_19

    .line 596
    move-object v0, v2

    .line 597
    goto :goto_1a

    .line 599
    .end local v2    # "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    :cond_19
    goto :goto_7

    .line 601
    :cond_1a
    :goto_1a
    if-nez v0, :cond_1d

    .line 602
    return-void

    .line 605
    :cond_1d
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 607
    iget-object v1, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    .line 609
    .local v1, "requestedRoute":Landroid/media/MediaRoute2Info;
    if-nez p2, :cond_2c

    .line 610
    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 611
    return-void

    .line 612
    :cond_2c
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ")"

    const-string v4, "MR2Manager"

    if-nez v2, :cond_70

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The session does not contain the requested route. (requestedRouteId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 614
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", actualRoutes="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 615
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 618
    return-void

    .line 619
    :cond_70
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    .line 619
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The session\'s provider ID does not match the requested route\'s. (requested route\'s providerId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 622
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", actual providerId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 623
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 626
    return-void

    .line 628
    :cond_b0
    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v2, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    .line 629
    return-void
.end method

.method public blacklist deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 841
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 842
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 844
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2Manager"

    if-nez v0, :cond_31

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring deselecting a route that is not selected. route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void

    .line 849
    :cond_31
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring deselecting a non-deselectable route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void

    .line 854
    :cond_56
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v0

    .line 855
    .local v0, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v0, :cond_72

    .line 857
    :try_start_5c
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 858
    .local v2, "requestId":I
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 859
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 858
    invoke-interface {v3, v0, v2, v4, p2}, Landroid/media/IMediaRouterService;->deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6b} :catch_6c

    .line 862
    .end local v2    # "requestId":I
    goto :goto_72

    .line 860
    :catch_6c
    move-exception v2

    .line 861
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "deselectRoute: Failed to send a request."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_72
    :goto_72
    return-void
.end method

.method public blacklist getAllRoutes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_8
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 446
    monitor-exit v1

    .line 447
    return-object v0

    .line 446
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v2
.end method

.method public blacklist getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 256
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaRouter2Manager;->getFilteredRoutes(Landroid/media/RoutingSessionInfo;ZLjava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 227
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 7
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 767
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 769
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 771
    .local v0, "selectedRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 772
    :try_start_c
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;)V

    .line 773
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    .line 774
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;-><init>()V

    .line 775
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 776
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    monitor-exit v1

    .line 772
    return-object v2

    .line 777
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_40

    throw v2
.end method

.method public blacklist getDiscoveryPreference(Ljava/lang/String;)Landroid/media/RouteDiscoveryPreference;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 346
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteDiscoveryPreference;

    return-object v0
.end method

.method public blacklist getMediaControllerForRoutingSession(Landroid/media/RoutingSessionInfo;)Landroid/media/session/MediaController;
    .registers 6
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 212
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 213
    .local v2, "controller":Landroid/media/session/MediaController;
    invoke-direct {p0, v2, p1}, Landroid/media/MediaRouter2Manager;->areSessionsMatched(Landroid/media/session/MediaController;Landroid/media/RoutingSessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 214
    return-object v2

    .line 216
    .end local v2    # "controller":Landroid/media/session/MediaController;
    :cond_1e
    goto :goto_b

    .line 217
    :cond_1f
    return-object v1
.end method

.method public blacklist getRemoteSessions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 427
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v0

    .line 428
    .local v0, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v0, :cond_15

    .line 430
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-interface {v1, v0}, Landroid/media/IMediaRouterService;->getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v1

    .line 431
    :catch_d
    move-exception v1

    .line 432
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2Manager"

    const-string v3, "Unable to get sessions. Service probably died."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;
    .registers 7
    .param p1, "mediaController"    # Landroid/media/session/MediaController;

    .line 378
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 379
    .local v0, "playbackInfo":Landroid/media/session/MediaController$PlaybackInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 380
    return-object v1

    .line 382
    :cond_8
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 383
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    return-object v1

    .line 385
    :cond_18
    invoke-virtual {p0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 386
    .local v3, "sessionInfo":Landroid/media/RoutingSessionInfo;
    invoke-direct {p0, p1, v3}, Landroid/media/MediaRouter2Manager;->areSessionsMatched(Landroid/media/session/MediaController;Landroid/media/RoutingSessionInfo;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 387
    return-object v3

    .line 389
    .end local v3    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    :cond_33
    goto :goto_20

    .line 390
    :cond_34
    return-object v1
.end method

.method public blacklist getRoutingSessions(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 402
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {p0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 408
    .local v2, "sessionInfo":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 409
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v2    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    :cond_32
    goto :goto_19

    .line 412
    :cond_33
    return-object v0
.end method

.method public blacklist getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 7
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 749
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 751
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 753
    .local v0, "selectedRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_c
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 755
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    .line 756
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;-><init>()V

    .line 757
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 758
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    monitor-exit v1

    .line 754
    return-object v2

    .line 759
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_40

    throw v2
.end method

.method public blacklist getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 6
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 735
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 737
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_8
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;-><init>()V

    .line 739
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 740
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    .line 738
    return-object v1

    .line 741
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 361
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 362
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v1

    .line 361
    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->getSystemSessionInfoForPackage(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 363
    :catch_b
    move-exception v0

    .line 364
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2Manager"

    const-string v2, "Unable to get current system session info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;-><init>(Landroid/media/RoutingSessionInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/media/MediaRouter2Manager;->getFilteredRoutes(Landroid/media/RoutingSessionInfo;ZLjava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 240
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method blacklist handleFailureOnHandler(II)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "reason"    # I

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "matchingRequest":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 634
    .local v2, "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget v3, v2, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v3, p1, :cond_19

    .line 635
    move-object v0, v2

    .line 636
    goto :goto_1a

    .line 638
    .end local v2    # "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    :cond_19
    goto :goto_7

    .line 640
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_29

    .line 641
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 642
    iget-object v1, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 643
    return-void

    .line 645
    :cond_29
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter2Manager;->notifyRequestFailed(I)V

    .line 646
    return-void
.end method

.method blacklist handleSessionsUpdatedOnHandler(Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 649
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 650
    .local v1, "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 652
    goto :goto_6

    .line 654
    :cond_23
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 655
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 656
    iget-object v0, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaRouter2Manager;->notifyTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    .line 657
    goto :goto_3f

    .line 659
    .end local v1    # "request":Landroid/media/MediaRouter2Manager$TransferRequest;
    .end local v2    # "sessionId":Ljava/lang/String;
    :cond_3e
    goto :goto_6

    .line 660
    :cond_3f
    :goto_3f
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V

    .line 661
    return-void
.end method

.method blacklist notifyRequestFailed(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 697
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 698
    .local v1, "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda10;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 699
    .end local v1    # "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    goto :goto_6

    .line 700
    :cond_1d
    return-void
.end method

.method blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 691
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 692
    .local v1, "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 693
    .end local v1    # "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    goto :goto_6

    .line 694
    :cond_1d
    return-void
.end method

.method blacklist notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 685
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 686
    .local v1, "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 687
    .end local v1    # "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    goto :goto_6

    .line 688
    :cond_1d
    return-void
.end method

.method blacklist notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 7
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 709
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 710
    .local v1, "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 711
    .end local v1    # "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    goto :goto_6

    .line 712
    :cond_1d
    return-void
.end method

.method blacklist notifyTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "newSession"    # Landroid/media/RoutingSessionInfo;

    .line 703
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 704
    .local v1, "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda12;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 705
    .end local v1    # "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    goto :goto_6

    .line 706
    :cond_1d
    return-void
.end method

.method public blacklist registerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/MediaRouter2Manager$Callback;

    .line 133
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/media/MediaRouter2Manager$CallbackRecord;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/MediaRouter2Manager$CallbackRecord;-><init>(Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    .line 137
    .local v0, "callbackRecord":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 138
    const-string v1, "MR2Manager"

    const-string v2, "Ignoring to register the same callback twice."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_1f
    return-void
.end method

.method public blacklist releaseSession(Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 877
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 879
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v0

    .line 880
    .local v0, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v0, :cond_23

    .line 882
    :try_start_b
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 883
    .local v1, "requestId":I
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 884
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 883
    invoke-interface {v2, v0, v1, v3}, Landroid/media/IMediaRouterService;->releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    .line 887
    .end local v1    # "requestId":I
    goto :goto_23

    .line 885
    :catch_1b
    move-exception v1

    .line 886
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2Manager"

    const-string v3, "releaseSession: Failed to send a request"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method blacklist removeRoutesOnHandler(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 571
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 573
    .local v2, "route":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    nop

    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_7

    .line 575
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_29

    .line 576
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 577
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2Manager;->notifyRoutesRemoved(Ljava/util/List;)V

    .line 579
    :cond_28
    return-void

    .line 575
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 8
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 799
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 800
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 802
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2Manager"

    if-eqz v0, :cond_31

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring selecting a route that is already selected. route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void

    .line 807
    :cond_31
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring selecting a non-selectable route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void

    .line 812
    :cond_56
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v0

    .line 813
    .local v0, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v0, :cond_72

    .line 815
    :try_start_5c
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 816
    .local v2, "requestId":I
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 817
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 816
    invoke-interface {v3, v0, v2, v4, p2}, Landroid/media/IMediaRouterService;->selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6b} :catch_6c

    .line 820
    .end local v2    # "requestId":I
    goto :goto_72

    .line 818
    :catch_6c
    move-exception v2

    .line 819
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "selectRoute: Failed to send a request."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_72
    :goto_72
    return-void
.end method

.method public blacklist selectRoute(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 454
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selecting route. packageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 461
    .local v1, "targetSession":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p0, v1, p2}, Landroid/media/MediaRouter2Manager;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 462
    return-void
.end method

.method public blacklist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .registers 7
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "volume"    # I

    .line 507
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2Manager"

    if-nez v0, :cond_14

    .line 510
    const-string/jumbo v0, "setRouteVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void

    .line 513
    :cond_14
    if-ltz p2, :cond_36

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v0

    if-le p2, v0, :cond_1d

    goto :goto_36

    .line 518
    :cond_1d
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v0

    .line 519
    .local v0, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v0, :cond_35

    .line 521
    :try_start_23
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 522
    .local v2, "requestId":I
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-interface {v3, v0, v2, p1, p2}, Landroid/media/IMediaRouterService;->setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    .line 525
    .end local v2    # "requestId":I
    goto :goto_35

    .line 523
    :catch_2f
    move-exception v2

    .line 524
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Unable to set route volume."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_35
    :goto_35
    return-void

    .line 514
    .end local v0    # "client":Landroid/media/MediaRouter2Manager$Client;
    :cond_36
    :goto_36
    const-string/jumbo v0, "setRouteVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method

.method public blacklist setSessionVolume(Landroid/media/RoutingSessionInfo;I)V
    .registers 8
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "volume"    # I

    .line 536
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2Manager"

    if-nez v0, :cond_14

    .line 539
    const-string/jumbo v0, "setSessionVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 542
    :cond_14
    if-ltz p2, :cond_3a

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v0

    if-le p2, v0, :cond_1d

    goto :goto_3a

    .line 547
    :cond_1d
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v0

    .line 548
    .local v0, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v0, :cond_39

    .line 550
    :try_start_23
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 551
    .local v2, "requestId":I
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 552
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-interface {v3, v0, v2, v4, p2}, Landroid/media/IMediaRouterService;->setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_32} :catch_33

    .line 555
    .end local v2    # "requestId":I
    goto :goto_39

    .line 553
    :catch_33
    move-exception v2

    .line 554
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Unable to set session volume."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    return-void

    .line 543
    .end local v0    # "client":Landroid/media/MediaRouter2Manager$Client;
    :cond_3a
    :goto_3a
    const-string/jumbo v0, "setSessionVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void
.end method

.method public blacklist startScan()V
    .registers 5

    .line 170
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v0

    .line 171
    .local v0, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v0, :cond_14

    .line 173
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-interface {v1, v0}, Landroid/media/IMediaRouterService;->startScan(Landroid/media/IMediaRouter2Manager;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 176
    goto :goto_14

    .line 174
    :catch_c
    move-exception v1

    .line 175
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2Manager"

    const-string v3, "Unable to get sessions. Service probably died."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public blacklist stopScan()V
    .registers 5

    .line 194
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->getOrCreateClient()Landroid/media/MediaRouter2Manager$Client;

    move-result-object v0

    .line 195
    .local v0, "client":Landroid/media/MediaRouter2Manager$Client;
    if-eqz v0, :cond_14

    .line 197
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-interface {v1, v0}, Landroid/media/IMediaRouterService;->stopScan(Landroid/media/IMediaRouter2Manager;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 200
    goto :goto_14

    .line 198
    :catch_c
    move-exception v1

    .line 199
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2Manager"

    const-string v3, "Unable to get sessions. Service probably died."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method public blacklist transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 7
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 477
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    const-string v0, "MR2Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring routing session. session= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_2f
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 484
    const-string v1, "MR2Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transfer: Ignoring an unknown route id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 486
    monitor-exit v0

    return-void

    .line 488
    :cond_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_2f .. :try_end_5e} :catchall_74

    .line 490
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 491
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_73

    .line 493
    :cond_70
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 495
    :goto_73
    return-void

    .line 488
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public blacklist unregisterCallback(Landroid/media/MediaRouter2Manager$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/MediaRouter2Manager$Callback;

    .line 149
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Landroid/media/MediaRouter2Manager$CallbackRecord;-><init>(Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterCallback: Ignore unknown callback. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 155
    :cond_2d
    return-void
.end method

.method blacklist updateDiscoveryPreference(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 715
    if-nez p2, :cond_8

    .line 716
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    return-void

    .line 719
    :cond_8
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    .line 720
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteDiscoveryPreference;

    .line 721
    .local v0, "prevPreference":Landroid/media/RouteDiscoveryPreference;
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 722
    return-void

    .line 724
    :cond_17
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 725
    .local v2, "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    iget-object v3, v2, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 727
    .end local v2    # "record":Landroid/media/MediaRouter2Manager$CallbackRecord;
    goto :goto_1d

    .line 728
    :cond_34
    return-void
.end method
