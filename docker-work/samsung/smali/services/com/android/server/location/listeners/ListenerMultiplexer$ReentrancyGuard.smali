.class public final Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
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
    name = "ReentrancyGuard"
.end annotation


# instance fields
.field public mGuardCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation
.end field

.field public mScheduledRemovals:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 679
    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    const/4 p1, 0x0

    .line 680
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
        }
    .end annotation

    .line 705
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    return-object p0
.end method

.method public close()V
    .registers 8

    .line 713
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 714
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    const/4 v2, 0x0

    if-nez v0, :cond_19

    .line 715
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    .line 716
    iput-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    move-object v2, v0

    :cond_19
    if-nez v2, :cond_1c

    return-void

    .line 723
    :cond_1c
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->-$$Nest$fgetmUpdateServiceBuffer(Lcom/android/server/location/listeners/ListenerMultiplexer;)Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v0

    .line 724
    :try_start_26
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    :goto_2a
    if-ge v1, v3, :cond_44

    .line 726
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 727
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_4a

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_44
    if-eqz v0, :cond_49

    .line 729
    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_49
    return-void

    :catchall_4a
    move-exception p0

    if-eqz v0, :cond_55

    .line 723
    :try_start_4d
    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    throw p0
.end method

.method public isReentrant()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation

    .line 685
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_11

    .line 686
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->-$$Nest$fgetmRegistrations(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 688
    :cond_11
    iget p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public markForRemoval(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "*>;)V"
        }
    .end annotation

    .line 693
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_11

    .line 694
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->-$$Nest$fgetmRegistrations(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 696
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    if-nez v0, :cond_2d

    .line 699
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->-$$Nest$fgetmRegistrations(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    .line 701
    :cond_2d
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
