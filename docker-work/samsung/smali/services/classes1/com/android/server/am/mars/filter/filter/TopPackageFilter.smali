.class public Lcom/android/server/am/mars/filter/filter/TopPackageFilter;
.super Ljava/lang/Object;
.source "TopPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mTopPkg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mContext:Landroid/content/Context;

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/TopPackageFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;
    .registers 1

    .line 24
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter$TopPackageFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 8

    .line 39
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_22

    .line 40
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p3

    if-nez p3, :cond_22

    .line 41
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p3

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p3, v1, p1, v2, v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_22

    return v0

    :cond_22
    const/4 p3, 0x4

    if-eq p4, p3, :cond_2d

    const/16 p3, 0xf

    if-eq p4, p3, :cond_2d

    const/16 p3, 0x10

    if-ne p4, p3, :cond_38

    .line 50
    :cond_2d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p3

    if-nez p3, :cond_38

    return v0

    .line 54
    :cond_38
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 55
    :try_start_3b
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_53

    .line 56
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    const/16 p0, 0xd

    .line 57
    monitor-exit p3

    return p0

    .line 59
    :cond_53
    monitor-exit p3

    return v0

    :catchall_55
    move-exception p0

    monitor-exit p3
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_55

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public isInTopPkgList(Ljava/lang/String;I)Z
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_1a

    .line 75
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    .line 76
    monitor-exit v0

    return p0

    .line 78
    :cond_1a
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public updateTopPkgList(Landroid/util/ArraySet;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_18

    .line 65
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 66
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 67
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->mTopPkg:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p0

    :cond_18
    :goto_18
    return-void
.end method
