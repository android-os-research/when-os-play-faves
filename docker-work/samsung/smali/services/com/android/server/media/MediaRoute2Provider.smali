.class public abstract Lcom/android/server/media/MediaRoute2Provider;
.super Ljava/lang/Object;
.source "MediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRoute2Provider$Callback;
    }
.end annotation


# instance fields
.field public mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

.field public final mComponentName:Landroid/content/ComponentName;

.field public mIsSystemRouteProvider:Z

.field public final mLock:Ljava/lang/Object;

.field public volatile mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

.field public final mSessionInfos:Ljava/util/List;
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

.field public final mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    const-string v0, "Component name must not be null."

    .line 46
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 47
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    return-object p0
.end method

.method public getSessionInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 81
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 108
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

.method public notifyProviderState()V
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    if-eqz v0, :cond_7

    .line 97
    invoke-interface {v0, p0}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onProviderStateChanged(Lcom/android/server/media/MediaRoute2Provider;)V

    :cond_7
    return-void
.end method

.method public abstract prepareReleaseSession(Ljava/lang/String;)V
.end method

.method public abstract releaseSession(JLjava/lang/String;)V
.end method

.method public abstract requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract selectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public setAndNotifyProviderState(Landroid/media/MediaRoute2ProviderInfo;)V
    .registers 2

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    return-void
.end method

.method public setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    return-void
.end method

.method public setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V
    .registers 4

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    goto :goto_23

    .line 88
    :cond_6
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v0, p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>(Landroid/media/MediaRoute2ProviderInfo;)V

    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 89
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->setUniqueId(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 90
    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->setSystemRouteProvider(Z)Landroid/media/MediaRoute2ProviderInfo$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    :goto_23
    return-void
.end method

.method public abstract setRouteVolume(JLjava/lang/String;I)V
.end method

.method public abstract setSessionVolume(JLjava/lang/String;I)V
.end method

.method public abstract transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
.end method
