.class public Lcom/android/server/wm/SplitActivityInfoRepository;
.super Ljava/lang/Object;
.source "SplitActivityInfoRepository.java"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# static fields
.field public static final CONFIG_SEPARATOR:Ljava/lang/String; = " "


# instance fields
.field public mRepository:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0GBtqA7Y0g56o0hUux4CQ1SC11E(Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/SplitActivityInfoRepository;->lambda$dump$1(Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3g5esZm75KpySEZQRr9diGKEbIQ([Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/SplitActivityInfoRepository;->lambda$onPackageFeatureDataChanged$3([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E8LHS_znn2Vhmf74h6NitjRB0vY(Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/SplitActivityInfoRepository;->lambda$onPackageFeatureDataChanged$2(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gVzGQFAxdU-A6KAUUCdRE8-SEwI(Lcom/android/server/wm/SplitActivityInfoRepository;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/SplitActivityInfoRepository;->lambda$onPackageFeatureDataChanged$4([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nmZ05d0TndxPE_DS_EgivDx10JQ(Ljava/util/Map$Entry;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/SplitActivityInfoRepository;->lambda$dump$0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    .line 46
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->SPLIT_ACTIVITY:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/util/Map$Entry;)Z
    .registers 2

    .line 93
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static synthetic lambda$dump$1(Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .registers 3

    const-string v0, "    "

    .line 95
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onPackageFeatureDataChanged$2(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const-string v0, " "

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onPackageFeatureDataChanged$3([Ljava/lang/String;)Z
    .registers 2

    .line 105
    array-length p0, p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private synthetic lambda$onPackageFeatureDataChanged$4([Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 106
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/wm/SplitActivityInfoRepository;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;

    if-nez v0, :cond_15

    .line 52
    new-instance v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_15
    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->add(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 56
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "    "

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SplitActivityInfoRepository : "

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Empty"

    .line 87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_3a

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda0;-><init>()V

    .line 93
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    .line 94
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_3a

    .line 98
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllowPackageNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;
    .registers 5

    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_14

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 73
    monitor-exit p0

    return-object p1

    .line 75
    :cond_e
    :try_start_e
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->getInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasInfo(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 3

    .line 102
    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda3;-><init>()V

    .line 105
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SplitActivityInfoRepository$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/SplitActivityInfoRepository;)V

    .line 106
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 107
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    if-nez v0, :cond_b

    .line 60
    monitor-exit p0

    return-void

    .line 62
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;

    .line 63
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 65
    iget-object p2, p0, Lcom/android/server/wm/SplitActivityInfoRepository;->mRepository:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_23

    .line 67
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
