.class public final Lcom/android/server/media/MediaRouterService$UserHandler;
.super Landroid/os/Handler;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
.implements Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;,
        Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    }
.end annotation


# static fields
.field public static final MSG_CONNECTION_TIMED_OUT:I = 0x9

.field public static final MSG_NOTIFY_GROUP_ROUTE_SELECTED:I = 0xa

.field public static final MSG_REQUEST_SET_VOLUME:I = 0x6

.field public static final MSG_REQUEST_UPDATE_VOLUME:I = 0x7

.field public static final MSG_SELECT_ROUTE:I = 0x4

.field public static final MSG_START:I = 0x1

.field public static final MSG_STOP:I = 0x2

.field public static final MSG_UNSELECT_ROUTE:I = 0x5

.field public static final MSG_UPDATE_CLIENT_STATE:I = 0x8

.field public static final MSG_UPDATE_DISCOVERY_REQUEST:I = 0x3

.field public static final PHASE_CONNECTED:I = 0x2

.field public static final PHASE_CONNECTING:I = 0x1

.field public static final PHASE_NOT_AVAILABLE:I = -0x1

.field public static final PHASE_NOT_CONNECTED:I = 0x0

.field public static final TIMEOUT_REASON_CONNECTION_LOST:I = 0x2

.field public static final TIMEOUT_REASON_NOT_AVAILABLE:I = 0x1

.field public static final TIMEOUT_REASON_WAITING_FOR_CONNECTED:I = 0x4

.field public static final TIMEOUT_REASON_WAITING_FOR_CONNECTING:I = 0x3


# instance fields
.field public mClientStateUpdateScheduled:Z

.field public mConnectionPhase:I

.field public mConnectionTimeoutReason:I

.field public mConnectionTimeoutStartTime:J

.field public mDiscoveryMode:I

.field public final mProviderRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mRunning:Z

.field public mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

.field public final mService:Lcom/android/server/media/MediaRouterService;

.field public final mTempClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/IMediaRouterClient;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

.field public final mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 6

    .line 1181
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 1169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1173
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    const/4 v0, -0x1

    .line 1175
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1182
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 1183
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 1184
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;

    move-result-object p1

    iget p2, p2, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-direct {v0, p1, p0, p0, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    return-void
.end method

.method public static getConnectionPhase(I)I
    .registers 3

    const/4 v0, 0x2

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_11

    const/4 v1, 0x6

    if-eq p0, v1, :cond_13

    const/4 p0, -0x1

    return p0

    :cond_10
    return v1

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    return v0
.end method


# virtual methods
.method public addProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 4

    .line 1358
    invoke-virtual {p1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    .line 1359
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    const/4 v0, 0x0

    .line 1360
    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1362
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    .line 1363
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getDisplayState()Landroid/media/RemoteDisplayState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 1366
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    return-void
.end method

.method public final checkSelectedRouteState()V
    .registers 7

    .line 1407
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const/4 v0, -0x1

    .line 1408
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1409
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void

    .line 1414
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1415
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_7d

    .line 1421
    :cond_1c
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1422
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->getConnectionPhase(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    const/4 v4, 0x2

    if-lt v0, v2, :cond_33

    if-ge v3, v2, :cond_33

    .line 1424
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void

    :cond_33
    if-eqz v3, :cond_78

    const-string v5, "MediaRouterService"

    if-eq v3, v2, :cond_5b

    if-eq v3, v4, :cond_3f

    .line 1447
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_7c

    :cond_3f
    if-eq v0, v4, :cond_57

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to route: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_57
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_7c

    :cond_5b
    if-eq v0, v2, :cond_73

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    const/4 v0, 0x4

    .line 1440
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_7c

    :cond_78
    const/4 v0, 0x3

    .line 1443
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    :goto_7c
    return-void

    .line 1416
    :cond_7d
    :goto_7d
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    return-void
.end method

.method public final connectionTimedOut()V
    .registers 9

    .line 1479
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    const-string v1, "MediaRouterService"

    if-eqz v0, :cond_97

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-nez v2, :cond_c

    goto/16 :goto_97

    :cond_c
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_63

    const/4 v2, 0x3

    const-string v3, " ms: "

    if-eq v0, v2, :cond_3f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1b

    goto :goto_90

    .line 1501
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route timed out while connecting after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1501
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 1495
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route timed out while waiting for connection attempt to begin after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1495
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 1491
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route connection lost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 1487
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route no longer available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_90
    const/4 v0, 0x0

    .line 1506
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 1508
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    return-void

    :cond_97
    :goto_97
    const-string p0, "Handled connection timeout for no reason."

    .line 1481
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mDiscoveryMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSelectedRouteRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mConnectionPhase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mConnectionTimeoutReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mConnectionTimeoutStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eqz v2, :cond_c0

    .line 1244
    iget-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_c2

    :cond_c0
    const-string v2, "<n/a>"

    :goto_c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1243
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_ea

    const/4 v0, 0x0

    :goto_da
    if-ge v0, v1, :cond_fe

    .line 1251
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 1254
    :cond_ea
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<no providers>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_fe
    return-void
.end method

.method public final findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I
    .registers 5

    .line 1586
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1588
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1589
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v2

    if-ne v2, p1, :cond_18

    return v1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public final findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .registers 5

    .line 1597
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1599
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object v2

    if-eqz v2, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1190
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    goto :goto_45

    .line 1228
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->notifyGroupRouteSelected(Ljava/lang/String;)V

    goto :goto_45

    .line 1224
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->connectionTimedOut()V

    goto :goto_45

    .line 1220
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateClientState()V

    goto :goto_45

    .line 1216
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestUpdateVolume(Ljava/lang/String;I)V

    goto :goto_45

    .line 1212
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestSetVolume(Ljava/lang/String;I)V

    goto :goto_45

    .line 1208
    :pswitch_2a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectRoute(Ljava/lang/String;)V

    goto :goto_45

    .line 1204
    :pswitch_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->selectRoute(Ljava/lang/String;)V

    goto :goto_45

    .line 1200
    :pswitch_3a
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateDiscoveryRequest()V

    goto :goto_45

    .line 1196
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->stop()V

    goto :goto_45

    .line 1192
    :pswitch_42
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->start()V

    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_20
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public final notifyGroupRouteSelected(Ljava/lang/String;)V
    .registers 9

    .line 1557
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_6a

    .line 1558
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaRouterService$UserRecord;->-$$Nest$fgetmClientGroupMap(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientGroup;

    if-nez p1, :cond_1c

    .line 1560
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_67

    .line 1581
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 1562
    :cond_1c
    :try_start_1c
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 1563
    iget-object v2, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_26
    if-ge v4, v2, :cond_42

    .line 1565
    iget-object v5, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 1566
    iget-object v6, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 1567
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1570
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_1c .. :try_end_43} :catchall_67

    .line 1572
    :try_start_43
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_6a

    :goto_49
    if-ge v3, p1, :cond_61

    .line 1575
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterClient;->onGroupRouteSelected(Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_56} :catch_57
    .catchall {:try_start_4b .. :try_end_56} :catchall_6a

    goto :goto_5e

    :catch_57
    :try_start_57
    const-string v0, "MediaRouterService"

    const-string v2, "Failed to call onSelectedRouteChanged. Client probably died."

    .line 1577
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_6a

    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 1581
    :cond_61
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_67
    move-exception p1

    .line 1570
    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw p1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception p1

    .line 1581
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1582
    throw p1
.end method

.method public onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .registers 3

    .line 1386
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    return-void
.end method

.method public removeProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 4

    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result v0

    if-ltz v0, :cond_1f

    .line 1373
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    const/4 v1, 0x0

    .line 1374
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 1375
    invoke-virtual {p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    const/4 v0, 0x0

    .line 1376
    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 1378
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    :cond_1f
    return-void
.end method

.method public final requestSetVolume(Ljava/lang/String;I)V
    .registers 4

    .line 1343
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_17

    .line 1344
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1345
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayVolume(I)V

    :cond_17
    return-void
.end method

.method public final requestUpdateVolume(Ljava/lang/String;I)V
    .registers 4

    .line 1350
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_17

    .line 1351
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1352
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->adjustDisplayVolume(I)V

    :cond_17
    return-void
.end method

.method public final scheduleUpdateClientState()V
    .registers 2

    .line 1512
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 1513
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    const/16 v0, 0x8

    .line 1514
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    return-void
.end method

.method public final selectRoute(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_42

    .line 1306
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_10

    .line 1308
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1309
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1316
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    :cond_42
    return-void
.end method

.method public final start()V
    .registers 2

    .line 1259
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 1260
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 1261
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->start()V

    :cond_c
    return-void
.end method

.method public final stop()V
    .registers 2

    .line 1266
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 1267
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1269
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->stop()V

    :cond_f
    return-void
.end method

.method public final unselectRoute(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 1324
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_13

    .line 1326
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    :cond_13
    return-void
.end method

.method public final unselectSelectedRoute()V
    .registers 3

    .line 1332
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_2e

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unselected route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1335
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1338
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    :cond_2e
    return-void
.end method

.method public final updateClientState()V
    .registers 7

    const/4 v0, 0x0

    .line 1519
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 1522
    new-instance v1, Landroid/media/MediaRouterClientState;

    invoke-direct {v1}, Landroid/media/MediaRouterClientState;-><init>()V

    .line 1523
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_1f

    .line 1525
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v4, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->appendClientState(Landroid/media/MediaRouterClientState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1528
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_6f

    .line 1530
    :try_start_26
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iput-object v1, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    .line 1533
    iget-object v1, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v0

    :goto_31
    if-ge v3, v1, :cond_47

    .line 1535
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 1537
    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_6c

    .line 1540
    :try_start_48
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_6f

    :goto_4e
    if-ge v0, v1, :cond_66

    .line 1543
    :try_start_50
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/IMediaRouterClient;

    invoke-interface {v2}, Landroid/media/IMediaRouterClient;->onStateChanged()V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5b} :catch_5c
    .catchall {:try_start_50 .. :try_end_5b} :catchall_6f

    goto :goto_63

    :catch_5c
    :try_start_5c
    const-string v2, "MediaRouterService"

    const-string v3, "Failed to call onStateChanged. Client probably died."

    .line 1545
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_6f

    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 1550
    :cond_66
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_6c
    move-exception v0

    .line 1537
    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v0

    .line 1550
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1551
    throw v0
.end method

.method public final updateConnectionTimeout(I)V
    .registers 6

    .line 1453
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eq p1, v0, :cond_30

    const/16 v1, 0x9

    if-eqz v0, :cond_b

    .line 1455
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1457
    :cond_b
    iput p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 1458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_27

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    goto :goto_30

    :cond_20
    const-wide/32 v2, 0xea60

    .line 1472
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_30

    :cond_27
    const-wide/16 v2, 0x1388

    .line 1468
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_30

    .line 1464
    :cond_2d
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_30
    :goto_30
    return-void
.end method

.method public final updateDiscoveryRequest()V
    .registers 9

    .line 1276
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1277
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_13
    if-ge v3, v1, :cond_28

    .line 1279
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 1280
    iget v7, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    or-int/2addr v4, v7

    .line 1281
    iget-boolean v6, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    or-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1283
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_57

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_33

    if-eqz v5, :cond_31

    const/4 v0, 0x2

    goto :goto_34

    :cond_31
    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    move v0, v2

    .line 1296
    :goto_34
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    if-eq v1, v0, :cond_56

    .line 1297
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 1298
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_40
    if-ge v2, v0, :cond_56

    .line 1300
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v1

    iget v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v1, v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_56
    return-void

    :catchall_57
    move-exception p0

    .line 1283
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .registers 4

    .line 1391
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result p1

    if-ltz p1, :cond_1a

    .line 1393
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1394
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    :cond_1a
    return-void
.end method
