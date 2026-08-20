.class public Lcom/android/server/pm/PersistentPreferredIntentResolver;
.super Lcom/android/server/pm/WatchedIntentResolver;
.source "PersistentPreferredIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/WatchedIntentResolver<",
        "Lcom/android/server/pm/PersistentPreferredActivity;",
        "Lcom/android/server/pm/PersistentPreferredActivity;",
        ">;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PersistentPreferredIntentResolver;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V

    .line 56
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PersistentPreferredIntentResolver;Lcom/android/server/pm/PersistentPreferredIntentResolver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>(Lcom/android/server/pm/PersistentPreferredIntentResolver;)V

    return-void
.end method


# virtual methods
.method public getIntentFilter(Lcom/android/server/pm/PersistentPreferredActivity;)Landroid/content/IntentFilter;
    .registers 2

    .line 35
    invoke-virtual {p1}, Lcom/android/server/pm/PersistentPreferredActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 25
    check-cast p1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->getIntentFilter(Lcom/android/server/pm/PersistentPreferredActivity;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PersistentPreferredActivity;)Z
    .registers 3

    .line 40
    iget-object p0, p2, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 25
    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PersistentPreferredActivity;)Z

    move-result p0

    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 64
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PersistentPreferredIntentResolver$1;-><init>(Lcom/android/server/pm/PersistentPreferredIntentResolver;Lcom/android/server/pm/PersistentPreferredIntentResolver;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/pm/PersistentPreferredActivity;
    .registers 2

    .line 30
    new-array p0, p1, [Lcom/android/server/pm/PersistentPreferredActivity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->newArray(I)[Lcom/android/server/pm/PersistentPreferredActivity;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/pm/PersistentPreferredActivity;)Lcom/android/server/pm/PersistentPreferredActivity;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/PersistentPreferredActivity;->snapshot()Lcom/android/server/pm/PersistentPreferredActivity;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 25
    invoke-virtual {p0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->snapshot()Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 25
    check-cast p1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->snapshot(Lcom/android/server/pm/PersistentPreferredActivity;)Lcom/android/server/pm/PersistentPreferredActivity;

    move-result-object p0

    return-object p0
.end method
