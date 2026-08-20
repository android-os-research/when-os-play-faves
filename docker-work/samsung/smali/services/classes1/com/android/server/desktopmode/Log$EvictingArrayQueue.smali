.class public Lcom/android/server/desktopmode/Log$EvictingArrayQueue;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/Log;
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

.field public final mElements:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    .line 120
    iput p1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    .line 121
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayDeque;

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

    .line 125
    iget-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    if-ne v1, v2, :cond_12

    .line 127
    iget-object v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 129
    :cond_12
    iget-object p0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 130
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object p0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/desktopmode/Log$EvictingArrayQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->forEach(Ljava/util/function/Consumer;)V

    .line 136
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method
