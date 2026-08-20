.class public Lcom/android/server/statusbar/TileRequestTracker;
.super Ljava/lang/Object;
.source "TileRequestTracker.java"


# static fields
.field public static final MAX_NUM_DENIALS:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mComponentsToRemove:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mTrackingMap:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUninstallReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$j9eJJ6b8JEgwLcbV9j_cE6r6lWA(Landroid/util/IndentingPrintWriter;ILandroid/content/ComponentName;Ljava/lang/Integer;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/statusbar/TileRequestTracker;->lambda$dump$0(Landroid/util/IndentingPrintWriter;ILandroid/content/ComponentName;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmComponentsToRemove(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/statusbar/TileRequestTracker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrackingMap(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    .line 54
    new-instance v2, Lcom/android/server/statusbar/TileRequestTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/statusbar/TileRequestTracker$1;-><init>(Lcom/android/server/statusbar/TileRequestTracker;)V

    iput-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Lcom/android/server/statusbar/TileRequestTracker;->mContext:Landroid/content/Context;

    .line 91
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    .line 92
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 93
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p0, "package"

    .line 94
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 95
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic lambda$dump$0(Landroid/util/IndentingPrintWriter;ILandroid/content/ComponentName;Ljava/lang/Integer;)V
    .registers 6

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addDenial(ILandroid/content/ComponentName;)V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 115
    iget-object p0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 116
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "TileRequestTracker:"

    .line 129
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 131
    iget-object p1, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 132
    :try_start_b
    iget-object p0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    new-instance p3, Lcom/android/server/statusbar/TileRequestTracker$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/android/server/statusbar/TileRequestTracker$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0, p3}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 135
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1a

    .line 136
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_1a
    move-exception p0

    .line 135
    :try_start_1b
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public resetRequests(ILandroid/content/ComponentName;)V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object p0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public shouldBeDenied(ILandroid/content/ComponentName;)Z
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object p0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x3

    if-lt p0, p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    monitor-exit v0

    return v1

    :catchall_1a
    move-exception p0

    .line 106
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method
