.class public Lcom/android/server/RescueParty$RescuePartyObserver;
.super Ljava/lang/Object;
.source "RescueParty.java"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RescueParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescuePartyObserver"
.end annotation


# static fields
.field public static sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "RescuePartyObserver.class"
        }
    .end annotation
.end field


# instance fields
.field public final mCallingPackageNamespaceSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mNamespaceCallingPackageSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mgetAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->getAffectedNamespaceSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetAllAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;)Ljava/util/Set;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getAllAffectedNamespaceSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCallingPackagesSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->getCallingPackagesSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrecordDeviceConfigAccess(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/RescueParty$RescuePartyObserver;->recordDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    .line 776
    iput-object p1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;
    .registers 3

    .line 781
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    .line 782
    :try_start_3
    sget-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    if-nez v1, :cond_e

    .line 783
    new-instance v1, Lcom/android/server/RescueParty$RescuePartyObserver;

    invoke-direct {v1, p0}, Lcom/android/server/RescueParty$RescuePartyObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 785
    :cond_e
    sget-object p0, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 786
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static getInstanceIfCreated()Lcom/android/server/RescueParty$RescuePartyObserver;
    .registers 2

    .line 792
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    .line 793
    :try_start_3
    sget-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 794
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static reset()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 799
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    const/4 v1, 0x0

    .line 800
    :try_start_4
    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 801
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public execute(Landroid/content/pm/VersionedPackage;II)Z
    .registers 6

    .line 819
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    goto :goto_10

    :cond_f
    return v1

    .line 825
    :cond_10
    :goto_10
    invoke-virtual {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->mayPerformFactoryReset(Landroid/content/pm/VersionedPackage;)Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-static {p3, p2, v0}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZLjava/lang/String;)I

    move-result p2

    .line 826
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 827
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 826
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->-$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public executeBootLoopMitigation(I)Z
    .registers 4

    .line 863
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 866
    :cond_8
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 867
    invoke-static {p1, v0, v1}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZLjava/lang/String;)I

    move-result p1

    .line 866
    invoke-static {p0, v1, p1}, Lcom/android/server/RescueParty;->-$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    return v0
.end method

.method public final declared-synchronized getAffectedNamespaceSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 924
    :try_start_1
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getAllAffectedNamespaceSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 928
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCallingPackagesSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 932
    :try_start_1
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "rescue-party-observer"

    return-object p0
.end method

.method public isPersistent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final isPersistentSystemApp(Ljava/lang/String;)Z
    .registers 3

    .line 896
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 898
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 899
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_13

    const/16 p1, 0x9

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_13

    const/4 v0, 0x1

    :catch_13
    :cond_13
    return v0
.end method

.method public mayObservePackage(Ljava/lang/String;)Z
    .registers 4

    .line 841
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 844
    :try_start_7
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_f

    if-eqz v0, :cond_f

    const/4 p0, 0x1

    return p0

    .line 850
    :catch_f
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->isPersistentSystemApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final mayPerformFactoryReset(Landroid/content/pm/VersionedPackage;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 888
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    :cond_11
    return p0
.end method

.method public onBootLoop(I)I
    .registers 3

    .line 855
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 858
    invoke-static {p1, p0, v0}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZLjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/RescueParty;->-$$Nest$smmapRescueLevelToUserImpact(I)I

    move-result p0

    return p0
.end method

.method public onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
    .registers 5

    .line 807
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1d

    .line 810
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->mayPerformFactoryReset(Landroid/content/pm/VersionedPackage;)Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 809
    invoke-static {p3, p0, p1}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZLjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/RescueParty;->-$$Nest$smmapRescueLevelToUserImpact(I)I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized recordDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 908
    :try_start_1
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_15

    .line 910
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 911
    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    :cond_15
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 915
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_27

    .line 917
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 919
    :cond_27
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    iget-object p1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 921
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method
