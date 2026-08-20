.class public Lcom/android/server/ssrm/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private head:I

.field private pointer:I

.field private size:I

.field private totalSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "Size"    # I

    .line 32
    .local p0, "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    .line 25
    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    .line 27
    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->head:I

    .line 29
    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->pointer:I

    .line 33
    iput p1, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    .line 34
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/ssrm/CircularBuffer;->buffer:[Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized get()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<buffer:",
            "Ljava/lang/Object;",
            ">()[",
            "Ljava/lang/String;"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    monitor-enter p0

    .line 48
    :try_start_1
    iget v0, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    .local v0, "temp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    if-ge v1, v2, :cond_1b

    .line 50
    iget-object v2, p0, Lcom/android/server/ssrm/CircularBuffer;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/ssrm/CircularBuffer;->head:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 52
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    :cond_1b
    monitor-exit p0

    return-object v0

    .line 47
    .end local v0    # "temp":[Ljava/lang/String;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBuffer()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<buffer:",
            "Ljava/lang/Object;",
            ">()[TT;"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ssrm/CircularBuffer;->buffer:[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 56
    .end local p0    # "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .registers 2

    .line 60
    .local p0, "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    iget v0, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    return v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<buffer:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ssrm/CircularBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/ssrm/CircularBuffer;->pointer:I

    aput-object p1, v0, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/ssrm/CircularBuffer;->pointer:I

    .line 40
    iget v1, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    if-ne v1, v0, :cond_1a

    .line 41
    iget v1, p0, Lcom/android/server/ssrm/CircularBuffer;->head:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/ssrm/CircularBuffer;->head:I

    goto :goto_1e

    .line 43
    .end local p0    # "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 45
    :goto_1e
    monitor-exit p0

    return-void

    .line 37
    .end local p1    # "data":Ljava/lang/Object;, "TT;"
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method
