.class public Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/remoteappmode/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EvictingArrayQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mCapacity:I

.field public final mElements:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPointer:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    .line 108
    iput p1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget v1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    .line 115
    iget-object v1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    if-ne v1, v2, :cond_1e

    .line 117
    iget-object v1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    invoke-virtual {v1, p0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 119
    :cond_1e
    iget-object p0, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10

    .line 125
    iget-object v0, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 127
    iget v2, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_11

    move v2, v4

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    if-ge v3, v1, :cond_2b

    .line 129
    iget-object v5, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    if-eqz v2, :cond_20

    iget v6, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v6, v7

    goto :goto_21

    :cond_20
    move v6, v3

    :goto_21
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 131
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method
