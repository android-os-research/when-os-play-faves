.class public final Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/listeners/ListenerMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateServiceBuffer"
.end annotation


# instance fields
.field public mBufferCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mUpdateServiceRequired:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V
    .registers 2

    .line 754
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 755
    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    .line 756
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
        }
    .end annotation

    monitor-enter p0

    .line 769
    :try_start_1
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 770
    monitor-exit p0

    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 4

    .line 776
    monitor-enter p0

    .line 777
    :try_start_1
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 778
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    if-nez v0, :cond_19

    .line 779
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    .line 780
    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    move v2, v0

    .line 782
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_22

    if-eqz v2, :cond_21

    .line 785
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    :cond_21
    return-void

    :catchall_22
    move-exception v0

    .line 782
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public declared-synchronized isBuffered()Z
    .registers 2

    monitor-enter p0

    .line 760
    :try_start_1
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markUpdateServiceRequired()V
    .registers 2

    monitor-enter p0

    .line 764
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->isBuffered()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v0, 0x1

    .line 765
    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 766
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
