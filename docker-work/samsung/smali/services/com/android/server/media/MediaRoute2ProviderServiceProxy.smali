.class public final Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
.super Lcom/android/server/media/MediaRoute2Provider;
.source "MediaRoute2ProviderServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;,
        Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MR2ProviderSvcProxy"


# instance fields
.field public mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

.field public mBound:Z

.field public mConnectionReady:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsManagerScanning:Z

.field public mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field public final mReleasingSessions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRunning:Z

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$kszvM75qhYZkXdfyeKeGNS3-24E(Ljava/lang/String;Landroid/media/RoutingSessionInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->lambda$onSessionCreated$0(Ljava/lang/String;Landroid/media/RoutingSessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rzKoLtOl_rgjWRiDOyJH_CpwfKw(Ljava/lang/String;Landroid/media/RoutingSessionInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->lambda$onSessionCreated$1(Ljava/lang/String;Landroid/media/RoutingSessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monConnectionDied(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onConnectionDied(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monConnectionReady(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onConnectionReady(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monProviderUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/MediaRoute2ProviderInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onProviderUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/MediaRoute2ProviderInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monRequestFailed(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onRequestFailed(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSessionCreated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onSessionCreated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSessionReleased(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onSessionReleased(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSessionsUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Ljava/util/List;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->onSessionsUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Ljava/util/List;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "MR2ProviderSvcProxy"

    const/4 v1, 0x3

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 4

    .line 80
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaRoute2Provider;-><init>(Landroid/content/ComponentName;)V

    const/4 p2, 0x0

    .line 73
    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 75
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    const-string p2, "Context must not be null."

    .line 81
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mContext:Landroid/content/Context;

    .line 82
    iput p3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mUserId:I

    .line 83
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$onSessionCreated$0(Ljava/lang/String;Landroid/media/RoutingSessionInfo;)Z
    .registers 2

    .line 354
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onSessionCreated$1(Ljava/lang/String;Landroid/media/RoutingSessionInfo;)Z
    .registers 2

    .line 356
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;
    .registers 3

    .line 460
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 461
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;->setOwnerPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p1

    .line 462
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final bind()V
    .registers 9

    const-string v0, ": Bind failed"

    .line 232
    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    if-nez v1, :cond_6c

    .line 233
    sget-boolean v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    const-string v2, "MR2ProviderSvcProxy"

    if-eqz v1, :cond_20

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_20
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.MediaRoute2ProviderService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 240
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mContext:Landroid/content/Context;

    const v5, 0x4000001

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, p0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    if-nez v3, :cond_6c

    if-eqz v1, :cond_6c

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_54} :catch_55

    goto :goto_6c

    :catch_55
    move-exception v1

    .line 247
    sget-boolean v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v3, :cond_6c

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6c
    :goto_6c
    return-void
.end method

.method public deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 137
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_9

    .line 138
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final disconnect()V
    .registers 5

    .line 480
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eqz v0, :cond_3a

    const/4 v1, 0x0

    .line 481
    iput-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 482
    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->dispose()V

    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRoute2Provider;->setAndNotifyProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_13
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 487
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v3, p0, v2}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionReleased(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    goto :goto_19

    .line 489
    :cond_2b
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 490
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 491
    monitor-exit v0

    goto :goto_3a

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final dispatchSessionCreated(JLandroid/media/RoutingSessionInfo;)V
    .registers 7

    .line 445
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 446
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p0, p1, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 445
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 5

    .line 455
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 456
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 455
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 5

    .line 450
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 451
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 450
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActiveConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  mConnectionReady="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findSessionByIdLocked(Landroid/media/RoutingSessionInfo;)I
    .registers 5

    const/4 v0, 0x0

    .line 367
    :goto_1
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 368
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 180
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    .line 301
    sget-boolean p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz p1, :cond_1a

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service binding died"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MR2ProviderSvcProxy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    .line 305
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->shouldBind()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 306
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->bind()V

    :cond_26
    return-void
.end method

.method public final onConnectionDied(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-ne v0, p1, :cond_21

    .line 321
    sget-boolean p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz p1, :cond_1e

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service connection died"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MR2ProviderSvcProxy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    :cond_21
    return-void
.end method

.method public final onConnectionReady(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;)V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    .line 312
    iput-boolean p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 313
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    if-eqz p1, :cond_e

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    :cond_e
    return-void
.end method

.method public final onProviderUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/MediaRoute2ProviderInfo;)V
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_5

    return-void

    .line 332
    :cond_5
    sget-boolean p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz p1, :cond_1f

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": updated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MR2ProviderSvcProxy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1f
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaRoute2Provider;->setAndNotifyProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    return-void
.end method

.method public final onRequestFailed(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JI)V
    .registers 7

    .line 467
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_14

    const-string p0, "MR2ProviderSvcProxy"

    const-string/jumbo p1, "onRequestFailed: Ignoring requestId REQUEST_ID_NONE"

    .line 472
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 476
    :cond_14
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {p1, p0, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 268
    sget-boolean p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    const-string v0, "MR2ProviderSvcProxy"

    if-eqz p1, :cond_1a

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    if-eqz v1, :cond_60

    .line 273
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 275
    invoke-static {p2}, Landroid/media/IMediaRoute2ProviderService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderService;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 277
    new-instance v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-direct {v1, p0, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/media/IMediaRoute2ProviderService;)V

    .line 278
    invoke-virtual {v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->register()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 279
    iput-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    goto :goto_60

    :cond_35
    if-eqz p1, :cond_60

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Registration failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 286
    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Service returned invalid binder"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 293
    sget-boolean p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz p1, :cond_1a

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MR2ProviderSvcProxy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    return-void
.end method

.method public final onSessionCreated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V
    .registers 8

    .line 340
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    if-nez p4, :cond_21

    const-string p1, "MR2ProviderSvcProxy"

    .line 345
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onSessionCreated: Ignoring null session sent from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_21
    invoke-virtual {p0, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p4

    .line 352
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    .line 355
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v2, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p4

    if-eqz p4, :cond_4f

    goto :goto_5b

    .line 360
    :cond_4f
    iget-object p4, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_65

    .line 363
    iget-object p4, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {p4, p0, p2, p3, p1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    return-void

    :cond_5b
    :goto_5b
    :try_start_5b
    const-string p0, "MR2ProviderSvcProxy"

    const-string/jumbo p1, "onSessionCreated: Duplicate session already exists. Ignoring."

    .line 357
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    .line 361
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_65

    throw p0
.end method

.method public final onSessionReleased(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .registers 8

    .line 407
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    if-nez p2, :cond_21

    const-string p1, "MR2ProviderSvcProxy"

    .line 411
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSessionReleased: Ignoring null session sent from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 415
    :cond_21
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    const/4 p2, 0x0

    .line 418
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_29
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 420
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 421
    iget-object p2, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    :cond_4f
    if-nez p2, :cond_78

    .line 427
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 428
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 429
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 430
    monitor-exit v0

    return-void

    .line 434
    :cond_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_29 .. :try_end_79} :catchall_8a

    if-nez p2, :cond_84

    const-string p0, "MR2ProviderSvcProxy"

    const-string/jumbo p1, "onSessionReleased: Matching session info not found"

    .line 437
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 441
    :cond_84
    iget-object p2, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {p2, p0, p1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionReleased(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void

    :catchall_8a
    move-exception p0

    .line 434
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public final onSessionsUpdated(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;)V"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 382
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    if-nez v1, :cond_1c

    goto :goto_d

    .line 385
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->findSessionByIdLocked(Landroid/media/RoutingSessionInfo;)I

    move-result v2

    if-gez v2, :cond_34

    .line 389
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-wide/16 v4, 0x0

    .line 390
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->dispatchSessionCreated(JLandroid/media/RoutingSessionInfo;)V

    move p1, v3

    goto :goto_d

    :cond_34
    if-ge v2, p1, :cond_51

    const-string v2, "MR2ProviderSvcProxy"

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring duplicate session ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 394
    :cond_51
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v2, p1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->dispatchSessionUpdated(Landroid/media/RoutingSessionInfo;)V

    move p1, v4

    goto :goto_d

    .line 399
    :cond_62
    iget-object p2, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_6a
    if-lt p2, p1, :cond_7a

    .line 400
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 401
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->dispatchSessionReleased(Landroid/media/RoutingSessionInfo;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_6a

    .line 403
    :cond_7a
    monitor-exit v0

    return-void

    :catchall_7c
    move-exception p0

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_9 .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method public prepareReleaseSession(Ljava/lang/String;)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 169
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 170
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public rebindIfDisconnected()V
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 207
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->bind()V

    :cond_10
    return-void
.end method

.method public releaseSession(JLjava/lang/String;)V
    .registers 5

    .line 113
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_c

    .line 114
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->releaseSession(JLjava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    :cond_c
    return-void
.end method

.method public requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 105
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_10

    .line 106
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    :cond_10
    return-void
.end method

.method public selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 130
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_9

    .line 131
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setManagerScanning(Z)V
    .registers 3

    .line 96
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mIsManagerScanning:Z

    if-eq v0, p1, :cond_9

    .line 97
    iput-boolean p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mIsManagerScanning:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    :cond_9
    return-void
.end method

.method public setRouteVolume(JLjava/lang/String;I)V
    .registers 6

    .line 151
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_c

    .line 152
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->setRouteVolume(JLjava/lang/String;I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    :cond_c
    return-void
.end method

.method public setSessionVolume(JLjava/lang/String;I)V
    .registers 6

    .line 159
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_c

    .line 160
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->setSessionVolume(JLjava/lang/String;I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    :cond_c
    return-void
.end method

.method public final shouldBind()Z
    .registers 3

    .line 221
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 223
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    if-eqz v0, :cond_13

    .line 224
    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 225
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mIsManagerScanning:Z

    if-eqz p0, :cond_22

    :cond_21
    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public start()V
    .registers 3

    .line 184
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    if-nez v0, :cond_24

    .line 185
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Starting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    :cond_24
    return-void
.end method

.method public stop()V
    .registers 3

    .line 194
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    if-eqz v0, :cond_24

    .line 195
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 144
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_9

    .line 145
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final unbind()V
    .registers 3

    .line 255
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    if-eqz v0, :cond_29

    .line 256
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Unbinding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderSvcProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 262
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_29
    return-void
.end method

.method public final updateBinding()V
    .registers 2

    .line 213
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 214
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->bind()V

    goto :goto_d

    .line 216
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    :goto_d
    return-void
.end method

.method public updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 122
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    if-eqz v0, :cond_b

    .line 123
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    .line 125
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    return-void
.end method
