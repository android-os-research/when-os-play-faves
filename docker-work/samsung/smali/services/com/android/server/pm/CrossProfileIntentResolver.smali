.class public Lcom/android/server/pm/CrossProfileIntentResolver;
.super Lcom/android/server/pm/WatchedIntentResolver;
.source "CrossProfileIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/WatchedIntentResolver<",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        ">;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentResolver;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/CrossProfileIntentResolver;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V

    .line 65
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>(Lcom/android/server/pm/CrossProfileIntentResolver;)V

    return-void
.end method


# virtual methods
.method public getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;
    .registers 2

    .line 50
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 30
    check-cast p1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 30
    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result p0

    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 73
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/CrossProfileIntentResolver$1;-><init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;
    .registers 2

    .line 35
    new-array p0, p1, [Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/pm/CrossProfileIntentFilter;)Lcom/android/server/pm/CrossProfileIntentFilter;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 59
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentResolver;->snapshot()Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->snapshot(Lcom/android/server/pm/CrossProfileIntentFilter;)Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
