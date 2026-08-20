.class public Lcom/android/server/utils/SnapshotCache$Auto;
.super Lcom/android/server/utils/SnapshotCache;
.source "SnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/SnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/utils/Snappable<",
        "TT;>;>",
        "Lcom/android/server/utils/SnapshotCache<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/server/utils/Watchable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/server/utils/Watchable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/utils/Snappable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 190
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/utils/Snappable;

    invoke-interface {p0}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/Snappable;

    return-object p0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache$Auto;->createSnapshot()Lcom/android/server/utils/Snappable;

    move-result-object p0

    return-object p0
.end method
