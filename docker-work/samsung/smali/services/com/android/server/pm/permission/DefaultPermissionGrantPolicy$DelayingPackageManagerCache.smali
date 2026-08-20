.class public Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;
.super Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelayingPackageManagerCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    }
.end annotation


# instance fields
.field public mDelayedPermissionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPackageInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPermissionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUserContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$mcreateContextAsUser(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .registers 3

    .line 2610
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper-IA;)V

    .line 2612
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 2615
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    .line 2617
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    .line 2619
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    return-void
.end method


# virtual methods
.method public addPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .registers 3

    .line 2642
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public apply()V
    .registers 7

    .line 2625
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    const/4 v0, 0x0

    move v1, v0

    .line 2626
    :goto_5
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    move v2, v0

    .line 2627
    :goto_e
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_64

    .line 2630
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->apply()V
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2d} :catch_2e

    goto :goto_61

    :catch_2e
    move-exception v3

    .line 2632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 2633
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DefaultPermGrantPolicy"

    .line 2632
    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2638
    :cond_67
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void
.end method

.method public final createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 4

    .line 2646
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_15

    .line 2648
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0

    .line 2651
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2653
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 2748
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 2750
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    return-object p0

    .line 2753
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2754
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I
    .registers 4

    .line 2688
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object p0

    .line 2689
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initFlags()V

    .line 2690
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .registers 3

    .line 2735
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 2737
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PermissionInfo;

    return-object p0

    .line 2740
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 2741
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    .registers 12

    .line 2660
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2661
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2660
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2662
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_21

    .line 2666
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    goto :goto_2c

    .line 2668
    :cond_21
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 2669
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 2672
    :goto_2c
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_39

    .line 2676
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    goto :goto_48

    .line 2678
    :cond_39
    new-instance v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState-IA;)V

    .line 2679
    invoke-virtual {v0, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v7

    :goto_48
    return-object p0
.end method

.method public grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .registers 4

    .line 2712
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object p0

    .line 2713
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initGranted()V

    .line 2714
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    return-void
.end method

.method public isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z
    .registers 4

    .line 2728
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object p0

    .line 2729
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initGranted()V

    .line 2730
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .registers 4

    .line 2720
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object p0

    .line 2721
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initGranted()V

    .line 2722
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V
    .registers 6

    .line 2696
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object p0

    .line 2697
    invoke-virtual {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initFlags()V

    .line 2698
    iget-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    not-int p2, p3

    and-int/2addr p1, p2

    and-int p2, p4, p3

    or-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    return-void
.end method
