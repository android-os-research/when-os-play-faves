.class public Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
.super Ljava/util/concurrent/ConcurrentLinkedDeque;
.source "ConcurrentLinkedEvictingDeque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentLinkedDeque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->mSize:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 35
    monitor-enter p0

    .line 36
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->mSize:I

    if-ne v0, v1, :cond_c

    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    .line 40
    :cond_c
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_12
    move-exception p1

    .line 41
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method
