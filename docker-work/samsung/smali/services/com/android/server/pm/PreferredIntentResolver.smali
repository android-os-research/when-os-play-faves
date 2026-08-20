.class public Lcom/android/server/pm/PreferredIntentResolver;
.super Lcom/android/server/pm/WatchedIntentResolver;
.source "PreferredIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/WatchedIntentResolver<",
        "Lcom/android/server/pm/PreferredActivity;",
        "Lcom/android/server/pm/PreferredActivity;",
        ">;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredIntentResolver;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredIntentResolver;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V

    .line 85
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/PreferredIntentResolver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>(Lcom/android/server/pm/PreferredIntentResolver;)V

    return-void
.end method


# virtual methods
.method public dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V
    .registers 4

    .line 44
    iget-object p0, p3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PreferredComponent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 28
    check-cast p3, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PreferredIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V

    return-void
.end method

.method public getIntentFilter(Lcom/android/server/pm/PreferredActivity;)Landroid/content/IntentFilter;
    .registers 2

    .line 49
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 28
    check-cast p1, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->getIntentFilter(Lcom/android/server/pm/PreferredActivity;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)Z
    .registers 3

    .line 38
    iget-object p0, p2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 28
    check-cast p2, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)Z

    move-result p0

    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 93
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PreferredIntentResolver$1;-><init>(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/pm/PreferredActivity;
    .registers 2

    .line 33
    new-array p0, p1, [Lcom/android/server/pm/PreferredActivity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->newArray(I)[Lcom/android/server/pm/PreferredActivity;

    move-result-object p0

    return-object p0
.end method

.method public shouldAddPreferredActivity(Lcom/android/server/pm/PreferredActivity;)Z
    .registers 11

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3e

    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3e

    .line 57
    :cond_e
    iget-object v1, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v1, v1, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 60
    :cond_16
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_3e

    .line 62
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredActivity;

    .line 63
    iget-object v4, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v5, v4, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v5, :cond_3b

    iget v5, v4, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v6, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v7, v6, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    const/high16 v8, 0xfff0000

    and-int/2addr v7, v8

    if-ne v5, v7, :cond_3b

    .line 65
    invoke-virtual {v4, v6}, Lcom/android/server/pm/PreferredComponent;->sameSet(Lcom/android/server/pm/PreferredComponent;)Z

    move-result v4

    if-eqz v4, :cond_3b

    return v2

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_3e
    :goto_3e
    return v0
.end method

.method public snapshot(Lcom/android/server/pm/PreferredActivity;)Lcom/android/server/pm/PreferredActivity;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 79
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/PreferredActivity;->snapshot()Lcom/android/server/pm/PreferredActivity;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/PreferredIntentResolver;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/pm/PreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 28
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredIntentResolver;->snapshot()Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 28
    check-cast p1, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->snapshot(Lcom/android/server/pm/PreferredActivity;)Lcom/android/server/pm/PreferredActivity;

    move-result-object p0

    return-object p0
.end method
