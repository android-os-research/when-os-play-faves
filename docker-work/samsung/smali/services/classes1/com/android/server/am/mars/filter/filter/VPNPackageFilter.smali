.class public Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;
.super Ljava/lang/Object;
.source "VPNPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;
    }
.end annotation


# instance fields
.field public mVpnPkgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/VPNPackageFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;
    .registers 1

    .line 21
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter$VPNPackageFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 5

    .line 31
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 32
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_1a

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x6

    .line 34
    monitor-exit p3

    return p0

    .line 36
    :cond_1a
    monitor-exit p3

    const/4 p0, 0x0

    return p0

    :catchall_1d
    move-exception p0

    monitor-exit p3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public onVpnPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    .line 41
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 42
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_12

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 47
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onVpnPkgUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    .line 54
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 56
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 57
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method
