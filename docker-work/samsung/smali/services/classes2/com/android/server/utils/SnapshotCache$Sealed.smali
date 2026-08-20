.class public Lcom/android/server/utils/SnapshotCache$Sealed;
.super Lcom/android/server/utils/SnapshotCache;
.source "SnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/SnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sealed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/utils/SnapshotCache<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Lcom/android/server/utils/SnapshotCache;-><init>()V

    return-void
.end method


# virtual methods
.method public createSnapshot()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 170
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cannot snapshot a sealed snaphot"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
