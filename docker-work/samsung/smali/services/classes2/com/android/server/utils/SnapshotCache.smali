.class public abstract Lcom/android/server/utils/SnapshotCache;
.super Lcom/android/server/utils/Watcher;
.source "SnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/SnapshotCache$Auto;,
        Lcom/android/server/utils/SnapshotCache$Sealed;,
        Lcom/android/server/utils/SnapshotCache$Statistics;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/utils/Watcher;"
    }
.end annotation


# static fields
.field public static final ENABLED:Z = true

.field public static final sCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/utils/SnapshotCache;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile mSealed:Z

.field public volatile mSnapshot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mSource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/server/utils/SnapshotCache;->sCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 106
    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 107
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 109
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/server/utils/Watchable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/server/utils/Watchable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 81
    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    .line 82
    invoke-interface {p2, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    if-eqz p3, :cond_1d

    .line 84
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Statistics;

    invoke-direct {p1, p3}, Lcom/android/server/utils/SnapshotCache$Statistics;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    .line 85
    sget-object p1, Lcom/android/server/utils/SnapshotCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 87
    :cond_1d
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    :goto_1f
    return-void
.end method


# virtual methods
.method public abstract createSnapshot()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final onChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 117
    iget-boolean p1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    return-void

    .line 118
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempt to change a sealed object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final seal()V
    .registers 2

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 142
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    if-eqz p0, :cond_21

    invoke-static {p0}, Lcom/android/server/utils/SnapshotCache$Statistics;->-$$Nest$fgetmReused(Lcom/android/server/utils/SnapshotCache$Statistics;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_21

    .line 138
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->createSnapshot()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    .line 140
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    if-eqz p0, :cond_21

    invoke-static {p0}, Lcom/android/server/utils/SnapshotCache$Statistics;->-$$Nest$fgetmRebuilt(Lcom/android/server/utils/SnapshotCache$Statistics;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_21
    :goto_21
    return-object v0
.end method
