.class public abstract Lcom/android/server/location/listeners/ListenerMultiplexer;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;,
        Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;,
        Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        "TRegistration:",
        "Lcom/android/server/location/listeners/ListenerRegistration<",
        "TT",
        "Listener;",
        ">;TMergedRegistration:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mActiveRegistrationsCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation
.end field

.field public mMerged:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTMergedRegistration;"
        }
    .end annotation
.end field

.field public final mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
        }
    .end annotation
.end field

.field public final mRegistrations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TTKey;TTRegistration;>;"
        }
    .end annotation
.end field

.field public mServiceRegistered:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation
.end field

.field public final mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRegistrations(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateServiceBuffer(Lcom/android/server/location/listeners/ListenerMultiplexer;)Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 90
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    .line 96
    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    return-void
.end method


# virtual methods
.method public final deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 600
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3f

    .line 601
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2c

    .line 603
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 605
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-nez v5, :cond_26

    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActiveMotionControl()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 606
    :cond_26
    invoke-virtual {v4, p1}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_33

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2c
    if-eqz v1, :cond_31

    .line 609
    :try_start_2e
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    .line 610
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_3f

    return-void

    :catchall_33
    move-exception p0

    if-eqz v1, :cond_3e

    .line 600
    :try_start_36
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p1

    :try_start_3b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw p0

    :catchall_3f
    move-exception p0

    .line 610
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final deliverToListeners(Ljava/util/function/Function;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TTRegistration;",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;>;)V"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 575
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_47

    .line 576
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_34

    .line 578
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 580
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-nez v5, :cond_26

    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActiveMotionControl()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 581
    :cond_26
    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    if-eqz v5, :cond_31

    .line 583
    invoke-virtual {v4, v5}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_3b

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_34
    if-eqz v1, :cond_39

    .line 587
    :try_start_36
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    .line 588
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_47

    return-void

    :catchall_3b
    move-exception p0

    if-eqz v1, :cond_46

    .line 575
    :try_start_3e
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p1

    :try_start_43
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw p0

    :catchall_47
    move-exception p0

    .line 588
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 623
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_3
    const-string/jumbo p3, "service: "

    .line 624
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getServiceState()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 628
    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4c

    const-string/jumbo p3, "listeners:"

    .line 629
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_28
    if-ge v0, p3, :cond_4c

    .line 633
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/listeners/ListenerRegistration;

    const-string v2, "  "

    .line 634
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 636
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, " (inactive)"

    .line 637
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    .line 639
    :cond_46
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 643
    :cond_4c
    monitor-exit p1

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit p1
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public getRegistrationCountWith(Ljava/util/function/Predicate;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TTRegistration;>;)I"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1d

    .line 241
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 242
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    add-int/lit8 v2, v2, 0x1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return v2
.end method

.method public getServiceState()Ljava/lang/String;
    .registers 2

    .line 651
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v0, :cond_11

    .line 652
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    if-eqz p0, :cond_d

    .line 653
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string/jumbo p0, "registered"

    return-object p0

    :cond_11
    const-string/jumbo p0, "unregistered"

    return-object p0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)Z"
        }
    .end annotation
.end method

.method public isRegistrationEmpty()Z
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 233
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public abstract mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTRegistration;>;)TTMergedRegistration;"
        }
    .end annotation
.end method

.method public newUpdateServiceLock()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateService",
            "Lock;"
        }
    .end annotation

    .line 480
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;)V

    return-object v0
.end method

.method public onActive()V
    .registers 1

    return-void
.end method

.method public onInactive()V
    .registers 1

    return-void
.end method

.method public onRegister()V
    .registers 1

    return-void
.end method

.method public final onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)V"
        }
    .end annotation

    .line 544
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 545
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 548
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->isRegistered()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 549
    :goto_1d
    invoke-virtual {p1, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->setActive(Z)Z

    move-result v2

    if-eqz v2, :cond_43

    if-eqz v0, :cond_33

    .line 552
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-ne v0, v1, :cond_2f

    .line 553
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onActive()V

    .line 555
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->onActive()V

    goto :goto_40

    .line 557
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->onInactive()V

    .line 558
    iget p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-nez p1, :cond_40

    .line 559
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onInactive()V

    .line 563
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    :cond_43
    return-void
.end method

.method public onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;)V"
        }
    .end annotation

    return-void
.end method

.method public onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;)V"
        }
    .end annotation

    return-void
.end method

.method public onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;TTRegistration;)V"
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)V"
        }
    .end annotation

    return-void
.end method

.method public onUnregister()V
    .registers 1

    return-void
.end method

.method public final putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;)V"
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->replaceRegistration(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public abstract registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTMergedRegistration;",
            "Ljava/util/Collection<",
            "TTRegistration;>;)Z"
        }
    .end annotation
.end method

.method public final removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TTRegistration;"
        }
    .end annotation

    .line 384
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 385
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 388
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 397
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v2

    .line 398
    :try_start_21
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_59

    .line 400
    :try_start_27
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 401
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 402
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerRegistration;->onUnregister()V

    if-eqz p2, :cond_42

    .line 404
    iget-object p2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 405
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 406
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onUnregister()V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_4d

    :cond_42
    if-eqz v3, :cond_47

    .line 409
    :try_start_44
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_59

    :cond_47
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_4c
    return-object v1

    :catchall_4d
    move-exception p0

    if-eqz v3, :cond_58

    .line 397
    :try_start_50
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p1

    :try_start_55
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw p0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    if-eqz v2, :cond_64

    :try_start_5c
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw p0
.end method

.method public final removeRegistration(Ljava/lang/Object;)V
    .registers 5

    .line 313
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1c

    .line 319
    monitor-exit v0

    return-void

    .line 322
    :cond_1c
    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;

    .line 323
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "*>;)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_d

    .line 365
    monitor-exit v0

    return-void

    .line 368
    :cond_d
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/listeners/ListenerRegistration;

    if-eq v2, p2, :cond_19

    .line 370
    monitor-exit v0

    return-void

    .line 373
    :cond_19
    iget-object p2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {p2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 374
    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 375
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->markForRemoval(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    goto :goto_2e

    :cond_2a
    const/4 p1, 0x1

    .line 377
    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;

    .line 379
    :goto_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final removeRegistrationIf(Ljava/util/function/Predicate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TTKey;>;)V"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 341
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_64

    .line 342
    :try_start_18
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_58

    .line 344
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    :goto_24
    if-ge v2, v4, :cond_40

    .line 346
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 347
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 348
    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_4c

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_40
    if-eqz v3, :cond_45

    .line 351
    :try_start_42
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_58

    :cond_45
    if-eqz v1, :cond_4a

    :try_start_47
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 352
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_64

    return-void

    :catchall_4c
    move-exception p0

    if-eqz v3, :cond_57

    .line 341
    :try_start_4f
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception p1

    :try_start_54
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    throw p0
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    if-eqz v1, :cond_63

    :try_start_5b
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception p1

    :try_start_60
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_63
    :goto_63
    throw p0

    :catchall_64
    move-exception p0

    .line 352
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public final replaceRegistration(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTKey;TTRegistration;)V"
        }
    .end annotation

    .line 261
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 267
    :try_start_c
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    if-eq p1, p2, :cond_29

    .line 270
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_29

    :cond_27
    move v1, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v2

    :goto_2a
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_97

    .line 279
    :try_start_33
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v4
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_8b

    .line 281
    :try_start_39
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    .line 284
    iget-object v7, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_50

    if-eq p1, p2, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    .line 286
    :goto_4c
    invoke-virtual {p0, v7, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;

    move-result-object v6

    :cond_50
    if-ne p1, p2, :cond_5a

    if-ltz v7, :cond_5a

    .line 289
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p1, v7, p3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 291
    :cond_5a
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5f
    if-eqz v5, :cond_64

    .line 295
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegister()V

    .line 297
    :cond_64
    invoke-virtual {p3, p2}, Lcom/android/server/location/listeners/ListenerRegistration;->onRegister(Ljava/lang/Object;)V

    if-nez v6, :cond_6d

    .line 299
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    goto :goto_70

    .line 301
    :cond_6d
    invoke-virtual {p0, p2, v6, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 303
    :goto_70
    invoke-virtual {p0, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_73
    .catchall {:try_start_39 .. :try_end_73} :catchall_7f

    if-eqz v4, :cond_78

    .line 304
    :try_start_75
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_8b

    :cond_78
    if-eqz v1, :cond_7d

    :try_start_7a
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 305
    :cond_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_97

    return-void

    :catchall_7f
    move-exception p0

    if-eqz v4, :cond_8a

    .line 278
    :try_start_82
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception p1

    :try_start_87
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8a
    :goto_8a
    throw p0
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception p0

    if-eqz v1, :cond_96

    :try_start_8e
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_96

    :catchall_92
    move-exception p1

    :try_start_93
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_96
    :goto_96
    throw p0

    :catchall_97
    move-exception p0

    .line 305
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_93 .. :try_end_99} :catchall_97

    throw p0
.end method

.method public reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTMergedRegistration;TTMergedRegistration;",
            "Ljava/util/Collection<",
            "TTRegistration;>;)Z"
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final resetService()V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 465
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    .line 466
    iput-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 467
    iput-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 468
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    .line 469
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 471
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)V"
        }
    .end annotation

    .line 614
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->unregisterInternal()V

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onTransferUnregisteredRegistration(Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public abstract unregisterWithService()V
.end method

.method public final updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Predicate<",
            "TTRegistration;>;)Z"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 525
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5a

    .line 526
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_4e

    .line 528
    :try_start_f
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_42

    if-gez p1, :cond_24

    const/4 p0, 0x0

    if-eqz v2, :cond_1d

    .line 538
    :try_start_1a
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_4e

    :cond_1d
    if-eqz v1, :cond_22

    :try_start_1f
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_5a

    return p0

    .line 533
    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 534
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_42

    :cond_35
    const/4 p0, 0x1

    if-eqz v2, :cond_3b

    .line 538
    :try_start_38
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4e

    :cond_3b
    if-eqz v1, :cond_40

    :try_start_3d
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_5a

    return p0

    :catchall_42
    move-exception p0

    if-eqz v2, :cond_4d

    .line 525
    :try_start_45
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p1

    :try_start_4a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw p0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p0

    if-eqz v1, :cond_59

    :try_start_51
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p1

    :try_start_56
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw p0

    :catchall_5a
    move-exception p0

    .line 539
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public final updateRegistrations(Ljava/util/function/Predicate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TTRegistration;>;)V"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 496
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_50

    .line 497
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_44

    .line 499
    :try_start_f
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_2c

    .line 501
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 502
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 503
    invoke-virtual {p0, v5}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_38

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2c
    if-eqz v2, :cond_31

    .line 506
    :try_start_2e
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_44

    :cond_31
    if-eqz v1, :cond_36

    :try_start_33
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 507
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_50

    return-void

    :catchall_38
    move-exception p0

    if-eqz v2, :cond_43

    .line 496
    :try_start_3b
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p1

    :try_start_40
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw p0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p0

    if-eqz v1, :cond_4f

    :try_start_47
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception p1

    :try_start_4c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw p0

    :catchall_50
    move-exception p0

    .line 507
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final updateService()V
    .registers 8

    .line 419
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 420
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->isBuffered()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 421
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->markUpdateServiceRequired()V

    .line 422
    monitor-exit v0

    return-void

    .line 425
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 426
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_25
    if-ge v4, v2, :cond_3b

    .line 428
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 429
    invoke-virtual {v5}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 430
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 434
    :cond_3b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4f

    .line 435
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v1, :cond_4d

    .line 436
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 437
    iput-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 438
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    .line 440
    :cond_4d
    monitor-exit v0

    return-void

    .line 443
    :cond_4f
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    .line 444
    iget-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 445
    :cond_5f
    iget-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v3, :cond_6c

    .line 446
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    goto :goto_72

    .line 448
    :cond_6c
    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 450
    :goto_72
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v1, :cond_77

    move-object v4, v2

    :cond_77
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 452
    :cond_79
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw p0
.end method
