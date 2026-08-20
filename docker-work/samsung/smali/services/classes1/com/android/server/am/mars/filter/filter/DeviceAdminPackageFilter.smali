.class public Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;
.super Ljava/lang/Object;
.source "DeviceAdminPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;
    }
.end annotation


# instance fields
.field public mActiveAdmins:Landroid/util/ArrayMap;
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

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;
    .registers 1

    .line 28
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

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

    .line 59
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 60
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_1b

    .line 61
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0x9

    .line 62
    monitor-exit p3

    return p0

    .line 64
    :cond_1b
    monitor-exit p3

    const/4 p0, 0x0

    return p0

    :catchall_1e
    move-exception p0

    monitor-exit p3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final getActiveAdminsPackages(I)V
    .registers 7

    .line 69
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 70
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 71
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 72
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    if-nez v1, :cond_24

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_24
    if-eqz v2, :cond_4d

    .line 79
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 80
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 83
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 88
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->setContext(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->getActiveAdminsPackages(I)V

    .line 43
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p1, :cond_30

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxId(IZ)I

    move-result p1

    .line 47
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_30

    const/16 v0, 0x96

    if-lt p1, v0, :cond_30

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_30

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->getActiveAdminsPackages(I)V

    :cond_30
    return-void
.end method

.method public onDeviceAdminDisabled(Ljava/lang/String;I)V
    .registers 6

    .line 106
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_23

    .line 108
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 109
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public onDeviceAdminEnabled(Ljava/lang/String;I)V
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_16

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    :cond_16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 99
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mContext:Landroid/content/Context;

    return-void
.end method
