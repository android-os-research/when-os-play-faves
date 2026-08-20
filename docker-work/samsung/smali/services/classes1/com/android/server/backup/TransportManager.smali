.class public Lcom/android/server/backup/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/TransportManager$TransportDescription;
    }
.end annotation


# static fields
.field public static final MORE_DEBUG:Z = false

.field public static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "BackupTransportManager"


# instance fields
.field public volatile mCurrentTransportName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation
.end field

.field public mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRegisteredTransportsDescriptionMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/TransportManager$TransportDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

.field public final mTransportLock:Ljava/lang/Object;

.field public final mTransportServiceIntent:Landroid/content/Intent;

.field public final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field public final mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$5g_dfIVb9lfyI5p99HUM3jALNS4(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/backup/TransportManager;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VdLWXXS3KmyjvqMPKCdg0edE854(Landroid/content/ComponentName;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/backup/TransportManager;->lambda$registerTransports$2(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oWPB_Enp9PoqZqUR8ZRWQd_6C3w(Landroid/content/ComponentName;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/backup/TransportManager;->lambda$onPackageAdded$1(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qW8Zg5q-jkUrnuCc6bfhB9ARB_Q(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/backup/TransportManager;->lambda$fromPackageFilter$3(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 74
    new-instance v0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 96
    iput p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 97
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    iput-object p3, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 99
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 100
    new-instance p3, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {p3}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object p3, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 101
    new-instance p4, Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/backup/transport/TransportConnectionManager;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;)V

    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;Lcom/android/server/backup/transport/TransportConnectionManager;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/transport/TransportConnectionManager;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 74
    new-instance v0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 112
    iput p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 113
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 114
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 115
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 116
    new-instance p1, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {p1}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 117
    iput-object p5, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    return-void
.end method

.method public static fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 755
    new-instance v0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$fromPackageFilter$3(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    .line 755
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static synthetic lambda$onPackageAdded$1(Landroid/content/ComponentName;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$registerTransports$2(Landroid/content/ComponentName;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final checkCanUseTransport()V
    .registers 2

    .line 742
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 743
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Can\'t call transport with transport lock held"

    .line 742
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3

    .line 551
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public dumpTransportClients(Ljava/io/PrintWriter;)V
    .registers 2

    .line 747
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnectionManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpTransportStats(Ljava/io/PrintWriter;)V
    .registers 2

    .line 751
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportStats;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public forEachRegisteredTransport(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 368
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetname(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_d

    .line 370
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 517
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 519
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0

    .line 515
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No transport selected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 537
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 539
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0

    .line 535
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No transport selected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentTransportComponent()Landroid/content/ComponentName;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-nez v1, :cond_a

    const/4 p0, 0x0

    .line 251
    monitor-exit v0

    return-object p0

    .line 253
    :cond_a
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentOrThrowLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 254
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getCurrentTransportName()Ljava/lang/String;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    .line 436
    :cond_8
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    :goto_e
    return-object p0
.end method

.method public final getRegisteredTransportComponentOrThrowLocked(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 405
    :cond_7
    new-instance p0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegisteredTransportComponents()[Landroid/content/ComponentName;
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 207
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 208
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/ComponentName;

    invoke-interface {v1, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/ComponentName;

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    .line 209
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    .line 444
    :cond_8
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/TransportManager$TransportDescription;

    :goto_e
    return-object p0
.end method

.method public final getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 413
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 414
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/TransportManager$TransportDescription;

    if-eqz p0, :cond_b

    return-object p0

    .line 416
    :cond_b
    new-instance p0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Landroid/content/ComponentName;)V

    throw p0
.end method

.method public final getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 426
    :cond_7
    new-instance p0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/TransportManager$TransportDescription;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 453
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 454
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetname(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegisteredTransportNames()[Ljava/lang/String;
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 221
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 222
    invoke-static {v3}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetname(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 225
    :cond_2b
    monitor-exit v0

    return-object v1

    :catchall_2d
    move-exception p0

    .line 226
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .registers 3

    .line 474
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object p0
    :try_end_4
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 476
    :catch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Transport "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not registered"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupTransportManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 498
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/backup/transport/TransportConnectionManager;->getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 496
    :cond_11
    new-instance p0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {p0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_17
    move-exception p0

    .line 499
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetconfigurationIntent(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 304
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetcurrentDestinationString(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 317
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetdataManagementIntent(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 331
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetdataManagementLabel(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/CharSequence;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 345
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgettransportDirName(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 279
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getTransportDirName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgettransportDirName(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 290
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fgetname(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 266
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getTransportWhitelist()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    return-object p0
.end method

.method public isTransportRegistered(Ljava/lang/String;)Z
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 352
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final isTransportTrusted(Landroid/content/ComponentName;)Z
    .registers 6

    .line 648
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BackupTransportManager"

    const/4 v2, 0x0

    if-nez v0, :cond_29

    .line 649
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BackupTransport "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not whitelisted."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 649
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 655
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 656
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget p0, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    invoke-virtual {v0, v3, v2, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 657
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_5b

    .line 659
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transport package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not privileged"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_5a} :catch_5d

    return v2

    :cond_5b
    const/4 p0, 0x1

    return p0

    :catch_5d
    move-exception p0

    const-string p1, "Package not found."

    .line 663
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .registers 3

    .line 127
    new-instance v0, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public varargs onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 150
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3f

    aget-object v0, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 153
    :try_start_d
    iget-object p2, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p2
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_13} :catch_3e

    if-eq p2, v2, :cond_3b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_37

    const-string p0, "BackupTransportManager"

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " enabled setting: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageDisabled(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageEnabled(Ljava/lang/String;)V

    :catch_3e
    return-void

    .line 184
    :cond_3f
    new-instance v0, Landroid/util/ArraySet;

    array-length v2, p2

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 185
    array-length v2, p2

    :goto_46
    if-ge v1, v2, :cond_55

    aget-object v3, p2, v1

    .line 186
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 188
    :cond_55
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5c

    return-void

    .line 191
    :cond_5c
    iget-object p2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter p2

    .line 192
    :try_start_5f
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 193
    monitor-exit p2
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_77

    .line 194
    new-instance p2, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    return-void

    :catchall_77
    move-exception p0

    .line 193
    :try_start_78
    monitor-exit p2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public onPackageDisabled(Ljava/lang/String;)V
    .registers 2

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageEnabled(Ljava/lang/String;)V
    .registers 2

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 133
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public registerAndSelectTransport(Landroid/content/ComponentName;)I
    .registers 5

    .line 584
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 586
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_4 .. :try_end_b} :catch_f
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    .line 587
    :try_start_b
    monitor-exit v0

    return v1

    :catchall_d
    move-exception p0

    goto :goto_31

    .line 591
    :catch_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_d

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 598
    :cond_17
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v2

    .line 600
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_1a .. :try_end_21} :catch_25
    .catchall {:try_start_1a .. :try_end_21} :catchall_23

    .line 601
    :try_start_21
    monitor-exit v2

    return v1

    :catchall_23
    move-exception p0

    goto :goto_2f

    :catch_25
    const-string p0, "BackupTransportManager"

    const-string p1, "Transport got unregistered"

    .line 603
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 604
    monitor-exit v2

    return p0

    .line 606
    :goto_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_23

    throw p0

    .line 591
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_d

    throw p0
.end method

.method public final registerTransport(Landroid/content/ComponentName;)I
    .registers 11

    const-string v0, "Transport "

    const-string v1, "BackupTransportManager"

    .line 680
    invoke-virtual {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 p0, -0x2

    return p0

    .line 686
    :cond_f
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransportManager.registerTransport()"

    .line 689
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x1

    const-string v6, "android.app.backup.extra.TRANSPORT_REGISTRATION"

    .line 690
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 692
    iget-object v5, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 693
    invoke-virtual {v5, p1, v4, v3}, Lcom/android/server/backup/transport/TransportConnectionManager;->getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v4

    const/4 v5, -0x1

    .line 697
    :try_start_27
    invoke-virtual {v4, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v6
    :try_end_2b
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_27 .. :try_end_2b} :catch_71

    .line 707
    :try_start_2b
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->transportDirName()Ljava/lang/String;

    move-result-object v8

    .line 709
    invoke-virtual {p0, p1, v6}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 711
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " registered"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object p1, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    invoke-interface {p1, v7, v8}, Lcom/android/server/backup/transport/OnTransportRegisteredListener;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_52} :catch_54

    const/4 v5, 0x0

    goto :goto_6b

    .line 715
    :catch_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " died while registering"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :goto_6b
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return v5

    .line 699
    :catch_71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t connect to transport "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for registration"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return v5
.end method

.method public final registerTransport(Landroid/content/ComponentName;Lcom/android/server/backup/transport/BackupTransportClient;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 728
    new-instance v8, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 730
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->transportDirName()Ljava/lang/String;

    move-result-object v2

    .line 732
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->configurationIntent()Landroid/content/Intent;

    move-result-object v3

    .line 733
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->currentDestinationString()Ljava/lang/String;

    move-result-object v4

    .line 734
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v5

    .line 735
    invoke-virtual {p2}, Lcom/android/server/backup/transport/BackupTransportClient;->dataManagementIntentLabel()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/TransportManager$TransportDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;Lcom/android/server/backup/TransportManager$TransportDescription-IA;)V

    .line 736
    iget-object p2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter p2

    .line 737
    :try_start_25
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {p0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    monitor-exit p2

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public registerTransports()V
    .registers 3

    .line 611
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    new-instance v1, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/backup/TransportManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    const/4 v2, 0x0

    .line 633
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 637
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 638
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 639
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 640
    invoke-virtual {p0, v0}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    goto :goto_10

    :cond_32
    return-void
.end method

.method public final registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_1f

    .line 624
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 625
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 626
    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    .line 624
    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    return-void

    .line 620
    :catch_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Trying to register transports from package not found "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupTransportManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selectTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 569
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 570
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    .line 571
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    return-void
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 8

    .line 384
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 386
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/TransportManager$TransportDescription;

    if-nez p0, :cond_2a

    const-string p0, "BackupTransportManager"

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transport "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not registered tried to change description"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    monitor-exit v0

    return-void

    .line 391
    :cond_2a
    invoke-static {p0, p2}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputname(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)V

    .line 392
    invoke-static {p0, p3}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputconfigurationIntent(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)V

    .line 393
    invoke-static {p0, p4}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputcurrentDestinationString(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)V

    .line 394
    invoke-static {p0, p5}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputdataManagementIntent(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)V

    .line 395
    invoke-static {p0, p6}, Lcom/android/server/backup/TransportManager$TransportDescription;->-$$Nest$fputdataManagementLabel(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/CharSequence;)V

    const-string p0, "BackupTransportManager"

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transport "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " updated its attributes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw p0
.end method
