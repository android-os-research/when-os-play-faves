.class public final Lcom/android/server/pm/DexOptHelper;
.super Ljava/lang/Object;
.source "DexOptHelper.java"


# static fields
.field public static final REASON_ADCP:I = 0x17

.field public static final SEVEN_DAYS_IN_MILLISECONDS:J = 0x240c8400L

.field public static final THIRTY_TWO_DAYS_IN_MILLISECONDS:J = 0xa4cb8000L


# instance fields
.field public final mDesignatedPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDexOptDialogShown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$0UZwwbHhSanr8meEj-DBhg3R_kI(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper;->lambda$getPackagesForDexopt$7(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$766fOVooBD2fuT3QTZODUXVIPG0(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper;->lambda$getPackagesForDexopt$8(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9BLKPSf4Cq2iOGYBHglwn0hO7L0(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper;->lambda$getPackagesForDexopt$2(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DGsAIgHrFAip6VvtWC5PY2KOokg(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DexOptHelper;->lambda$sortPackagesByUsageDate$9(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HE37fggosu24q8km03dcuVHXLjw(Lcom/android/server/pm/DexOptHelper;Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/DexOptHelper;->lambda$getOptimizablePackages$0(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTk20rLzHwmnLyXwO2cTXC12eEQ(JLcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DexOptHelper;->lambda$getPackagesForDexopt$6(JLcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cWOBPVJ74qdRu-7GQBr92tLGeCE(Lcom/android/server/pm/pkg/PackageStateInternal;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper;->lambda$getPackagesForDexopt$5(Lcom/android/server/pm/pkg/PackageStateInternal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$dv3wsxhYhCRbspounRVc2lAHI6g(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper;->lambda$getPackagesForDexopt$1(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lWzU5_pniglilVFg-zpiQTw1Klc(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DexOptHelper;->lambda$getPackagesForDexopt$3(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zteNKa6HHxwyU2_FVID35aBRv_I(Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DexOptHelper;->lambda$getPackagesForDexopt$4(Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 9

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.messaging"

    const-string v2, "com.samsung.android.dialer"

    const-string v3, "com.sec.android.app.myfiles"

    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.samsung.android.honeyboard"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mDesignatedPkg:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mLock:Ljava/lang/Object;

    .line 127
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public static applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 824
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 825
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 826
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 830
    :cond_1a
    invoke-static {p4, p5}, Lcom/android/server/pm/DexOptHelper;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 831
    invoke-interface {p3, p4}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 833
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 834
    invoke-interface {p2, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-interface {p0, p5}, Lcom/android/server/pm/Computer;->findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object p5

    .line 837
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 838
    invoke-interface {p5, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 839
    invoke-interface {p2, p5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 840
    invoke-interface {p3, p5}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_24

    .line 844
    :cond_47
    invoke-interface {p4}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getBcpApexes()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BOOTCLASSPATH"

    .line 931
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v0, "PackageManager"

    const-string v1, "Unable to get BOOTCLASSPATH"

    .line 933
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 937
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ":"

    .line 938
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_26
    if-ge v4, v2, :cond_56

    aget-object v5, v0, v4

    new-array v6, v3, [Ljava/lang/String;

    .line 939
    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 942
    invoke-interface {v5}, Ljava/nio/file/Path;->getNameCount()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_53

    invoke-interface {v5, v3}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "apex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v6, 0x1

    .line 943
    invoke-interface {v5, v6}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_56
    return-object v1
.end method

.method public static getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 866
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 867
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    const/4 p0, 0x0

    .line 870
    :goto_13
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    if-eqz p0, :cond_32

    .line 872
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 873
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_32
    return-object p1
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 725
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/DexOptHelper;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 732
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 733
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 736
    sget-object p0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 738
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 740
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 744
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda1;-><init>()V

    move-object v0, v8

    move-object v2, v6

    move-object v3, v7

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 749
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 753
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 754
    invoke-static {v0, v1}, Lcom/android/server/pm/DexOptHelper;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 755
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(Landroid/util/ArraySet;)V

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 759
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    .line 760
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/dex/DexManager;)V

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 768
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v9, "PackageManager"

    if-nez v0, :cond_ba

    .line 769
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v0

    if-eqz v0, :cond_ba

    if-eqz p2, :cond_68

    const-string v0, "Looking at historical package use"

    .line 771
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_68
    new-instance v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;-><init>()V

    .line 775
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 774
    invoke-static {v7, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p2, :cond_96

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Taking package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as reference in time use"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_96
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b0

    const-wide v2, 0xa4cb8000L

    sub-long/2addr v0, v2

    .line 792
    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda6;-><init>(J)V

    goto :goto_b5

    .line 796
    :cond_b0
    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda7;-><init>()V

    .line 798
    :goto_b5
    invoke-static {v7, p1}, Lcom/android/server/pm/DexOptHelper;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    move-object v1, v2

    goto :goto_c0

    .line 801
    :cond_ba
    new-instance v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;-><init>()V

    move-object v1, v0

    :goto_c0
    move-object v0, v8

    move-object v2, v6

    move-object v3, v7

    move-object v4, p0

    move-object v5, p1

    .line 803
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    if-eqz p2, :cond_fa

    .line 807
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Packages to be dexopted: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Packages skipped from dexopt: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    return-object v6
.end method

.method public static getPrebuildProfilePath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".prof"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasBcpApexesChanged()Z
    .registers 4

    .line 955
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getBcpApexes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 956
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    .line 957
    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 958
    iget-object v3, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-boolean v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$getOptimizablePackages$0(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4

    .line 528
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 529
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 530
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method

.method public static synthetic lambda$getPackagesForDexopt$1(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    .line 744
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getPackagesForDexopt$2(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    .line 749
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isCoreApp()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getPackagesForDexopt$3(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2

    .line 755
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getPackagesForDexopt$4(Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2

    .line 761
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object p0

    .line 762
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getPackagesForDexopt$5(Lcom/android/server/pm/pkg/PackageStateInternal;)J
    .registers 3

    .line 776
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    .line 777
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$getPackagesForDexopt$6(JLcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 5

    .line 792
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p2

    .line 793
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$getPackagesForDexopt$7(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getPackagesForDexopt$8(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$sortPackagesByUsageDate$9(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 4

    .line 858
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 859
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide p0

    .line 857
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static packagesToString(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 881
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 882
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_17

    const-string v2, ", "

    .line 883
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :cond_17
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 887
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestCopyPreoptedFiles()V
    .registers 9

    const-string/jumbo v0, "ro.cp_system_other_odex"

    const/4 v1, 0x0

    .line 899
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    const-string/jumbo v0, "sys.cppreopt"

    const-string/jumbo v1, "requested"

    .line 900
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x186a0

    add-long/2addr v3, v1

    move-wide v5, v1

    .line 905
    :cond_1d
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "finished"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "PackageManager"

    if-nez v7, :cond_43

    const-wide/16 v5, 0x64

    .line 907
    :try_start_2d
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_30

    .line 911
    :catch_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_1d

    const-string/jumbo v3, "timed-out"

    .line 913
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cppreopt did not finish!"

    .line 914
    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cppreopts took "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-void
.end method

.method public static sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 852
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 856
    :cond_7
    new-instance p1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final checkAndDexOptSystemUi()V
    .registers 11

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104003a

    .line 366
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_33

    const-string p0, "PackageManager"

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System UI package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not found for dexopting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    const/4 v1, 0x1

    .line 377
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dalvik.vm.systemuicompilerfilter"

    .line 379
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {v2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 384
    new-instance v3, Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->getPrebuildProfilePath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 390
    :try_start_53
    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_94

    .line 391
    :try_start_58
    iget-object v5, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 392
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v7

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 393
    invoke-static {v9}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 391
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/pm/Installer;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    move-object v1, v2

    goto :goto_8f

    :cond_75
    const-string v2, "PackageManager"

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to copy profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_8f
    monitor-exit v4

    goto :goto_af

    :catchall_91
    move-exception v2

    monitor-exit v4
    :try_end_93
    .catchall {:try_start_58 .. :try_end_93} :catchall_91

    :try_start_93
    throw v2
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_94} :catch_94

    :catch_94
    move-exception v2

    const-string v4, "PackageManager"

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to copy profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_af
    :goto_af
    move-object v5, v1

    goto :goto_b2

    :cond_b1
    move-object v5, v2

    .line 407
    :goto_b2
    new-instance v1, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/DexOptHelper;->performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I

    return-void
.end method

.method public controlDexOptBlocking(Z)V
    .registers 2

    .line 924
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->controlDexOptBlocking(Z)V

    return-void
.end method

.method public forceDexOpt(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 13

    const-string v0, "forceDexOpt"

    .line 651
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 653
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_d

    const/4 v0, 0x0

    goto :goto_11

    .line 654
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    :goto_11
    if-eqz p1, :cond_4e

    if-eqz v0, :cond_4e

    const-wide/32 v1, 0x40000

    const-string v3, "dexopt"

    .line 659
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 663
    new-instance v3, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v6, 0xc

    .line 665
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getDefaultCompilerFilter()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x6

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 663
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/pm/DexOptHelper;->performDexOptInternalWithDependenciesLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    .line 668
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_37

    return-void

    .line 670
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to dexopt: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 656
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/DexOptHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final isCallerInstallerForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 3

    .line 695
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_8

    return p2

    .line 699
    :cond_8
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    .line 701
    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 702
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_15

    return p2

    .line 706
    :cond_15
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    .line 707
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-ne p0, p1, :cond_24

    const/4 p2, 0x1

    :cond_24
    return p2
.end method

.method public isDexOptDialogShown()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/DexOptHelper;->mDexOptDialogShown:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .registers 6

    .line 537
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 538
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    return v2

    .line 540
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    return v2

    .line 544
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySecondaryDex()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 545
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->dexoptSecondaryDex(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result p0

    return p0

    .line 547
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_3a

    const/4 v2, 0x1

    :cond_3a
    return v2
.end method

.method public performDexOptForADCP(Ljava/lang/String;Z)I
    .registers 9

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    :goto_5
    or-int/lit8 p2, p2, 0x1

    or-int/lit8 v5, p2, 0x4

    .line 147
    new-instance p2, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v2, 0x17

    const/4 v4, 0x0

    const-string/jumbo v3, "speed-profile"

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/DexOptHelper;->performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    return p0
.end method

.method public final performDexOptInternal(Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 7

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 579
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 580
    iget-object v2, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v1, :cond_4e

    if-nez v2, :cond_24

    goto :goto_4e

    .line 585
    :cond_24
    iget-object v3, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getPackageUsage()Lcom/android/server/pm/PackageUsage;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 586
    iget-object v3, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v3}, Lcom/android/server/pm/CompilerStats;->maybeWriteAsync()Z

    .line 587
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_51

    .line 588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 590
    :try_start_41
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptInternalWithDependenciesLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_49

    .line 592
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_49
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    throw p0

    :cond_4e
    :goto_4e
    const/4 p0, -0x1

    .line 583
    :try_start_4f
    monitor-exit v0

    return p0

    :catchall_51
    move-exception p0

    .line 587
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final performDexOptInternalWithDependenciesLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 19

    move-object v0, p0

    const-string v1, "android"

    .line 599
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 600
    iget-object v0, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    move-object/from16 v7, p3

    invoke-virtual {v0, v7}, Lcom/android/server/pm/dex/DexManager;->dexoptSystemServer(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0

    :cond_1a
    move-object/from16 v7, p3

    .line 606
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isForce()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 607
    new-instance v1, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;

    iget-object v2, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    goto :goto_30

    .line 608
    :cond_2c
    iget-object v1, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 617
    :goto_30
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SharedLibraryUtils;->findSharedLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object v2

    .line 619
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v3

    .line 620
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v4

    .line 618
    invoke-static {v3, v4}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 621
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 622
    new-instance v3, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 623
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v11

    .line 624
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v12

    .line 625
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getFlags()I

    move-result v5

    or-int/lit8 v13, v5, 0x40

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 626
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_66
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SharedLibraryInfo;

    .line 629
    iget-object v6, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v6

    .line 630
    :try_start_77
    iget-object v8, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 631
    iget-object v8, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 632
    monitor-exit v6
    :try_end_93
    .catchall {:try_start_77 .. :try_end_93} :catchall_b2

    if-eqz v9, :cond_66

    if-eqz v10, :cond_66

    .line 635
    iget-object v5, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 636
    invoke-virtual {v5, v9}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v12

    iget-object v5, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 637
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v5

    .line 638
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 637
    invoke-virtual {v5, v6}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v13

    move-object v8, v1

    move-object v11, v4

    move-object v14, v3

    .line 635
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    goto :goto_66

    :catchall_b2
    move-exception v0

    .line 632
    :try_start_b3
    monitor-exit v6
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    .line 645
    :cond_b5
    iget-object v2, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v3, p1

    .line 646
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v5

    iget-object v0, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 647
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    .line 645
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method public performDexOptMode(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z
    .registers 14

    .line 677
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell()Z

    move-result v0

    if-nez v0, :cond_16

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/DexOptHelper;->isCallerInstallerForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_16

    .line 679
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "performDexOptMode"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_16
    const/4 p1, 0x0

    if-eqz p5, :cond_1b

    const/4 p5, 0x2

    goto :goto_1c

    :cond_1b
    move p5, p1

    :goto_1c
    or-int/2addr p3, p5

    if-eqz p6, :cond_20

    const/4 p1, 0x4

    :cond_20
    or-int v5, p3, p1

    .line 686
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result p1

    .line 687
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "com.samsung.android.appbooster"

    .line 688
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    const/16 p1, 0x14

    goto :goto_3b

    :cond_39
    const/16 p1, 0xc

    :goto_3b
    move v2, p1

    .line 690
    new-instance p1, Lcom/android/server/pm/dex/DexoptOptions;

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result p0

    return p0
.end method

.method public performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    if-eqz p3, :cond_4

    const/4 p3, 0x2

    goto :goto_5

    :cond_4
    const/4 p3, 0x0

    :goto_5
    or-int/lit8 v5, p3, 0xd

    .line 716
    new-instance p3, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v2, 0xc

    const/4 v4, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result p0

    return p0
.end method

.method public final performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 5

    const-wide/32 v0, 0x40000

    const-string v2, "dexopt"

    .line 565
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 567
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptInternal(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 569
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 570
    throw p0
.end method

.method public performDexOptUpgrade(Ljava/util/List;ZIZZ)[I
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;ZIZZ)[I"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 166
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 168
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v8, :cond_207

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    add-int/lit8 v11, v0, 0x1

    .line 174
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_68

    if-nez p5, :cond_34

    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mDesignatedPkg:Ljava/util/ArrayList;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 175
    :cond_34
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerService;->getCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "PackageManager"

    .line 176
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "compilerFilter: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "speed-profile"

    .line 177
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_68

    const-string/jumbo v12, "speed"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    move v12, v10

    goto :goto_69

    :cond_68
    const/4 v12, 0x0

    .line 185
    :goto_69
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_79
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-nez v0, :cond_87

    :cond_7f
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 187
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 191
    :cond_87
    new-instance v13, Ljava/io/File;

    invoke-static {v8}, Lcom/android/server/pm/DexOptHelper;->getPrebuildProfilePath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    if-eqz v0, :cond_e6

    .line 198
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v0, v17, v15

    if-lez v0, :cond_e6

    .line 204
    :try_start_a1
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 205
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v10

    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-static {v14}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 204
    invoke-virtual {v0, v15, v10, v4, v14}, Lcom/android/server/pm/Installer;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_165

    const-string v0, "PackageManager"

    const-string v4, "Installer failed to copy system profile!"

    .line 207
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c2} :catch_c4

    goto/16 :goto_165

    :catch_c4
    move-exception v0

    const-string v4, "PackageManager"

    .line 214
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to copy profile "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_165

    .line 218
    :cond_e6
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 219
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_165

    .line 223
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isStub()Z

    move-result v4

    if-eqz v4, :cond_165

    .line 226
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->getPrebuildProfilePath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "-Stub"

    const-string v10, ""

    .line 227
    invoke-virtual {v0, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 238
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v0, v18, v15

    if-lez v0, :cond_165

    .line 245
    :try_start_121
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 246
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v13

    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 247
    invoke-static {v14}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 245
    invoke-virtual {v0, v10, v13, v15, v14}, Lcom/android/server/pm/Installer;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_143

    const-string v0, "PackageManager"

    const-string v10, "Failed to copy system profile for stub package!"

    .line 248
    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_142} :catch_145

    goto :goto_165

    :cond_143
    const/4 v12, 0x1

    goto :goto_165

    :catch_145
    move-exception v0

    const-string v10, "PackageManager"

    .line 253
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to copy profile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-static {v10, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    :cond_165
    :goto_165
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_174

    :cond_16f
    add-int/lit8 v6, v6, 0x1

    :cond_171
    :goto_171
    move v0, v11

    goto/16 :goto_e

    :cond_174
    if-eqz p2, :cond_1af

    .line 278
    :try_start_176
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iget-object v4, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x10401ac

    new-array v13, v9, [Ljava/lang/Object;

    .line 280
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 279
    invoke-virtual {v4, v10, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-virtual {v0, v4, v15, v11, v2}, Landroid/app/ActivityManagerInternal;->showBootMessage(Ljava/lang/CharSequence;ZII)V
    :try_end_1a4
    .catch Landroid/os/RemoteException; {:try_start_176 .. :try_end_1a4} :catch_1a4

    .line 291
    :catch_1a4
    iget-object v4, v1, Lcom/android/server/pm/DexOptHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v10, 0x1

    .line 292
    :try_start_1a8
    iput-boolean v10, v1, Lcom/android/server/pm/DexOptHelper;->mDexOptDialogShown:Z

    .line 293
    monitor-exit v4

    goto :goto_1af

    :catchall_1ac
    move-exception v0

    monitor-exit v4
    :try_end_1ae
    .catchall {:try_start_1a8 .. :try_end_1ae} :catchall_1ac

    throw v0

    :cond_1af
    :goto_1af
    if-eqz v12, :cond_1b4

    const/16 v0, 0x9

    goto :goto_1b6

    :cond_1b4
    move/from16 v0, p3

    :goto_1b6
    const-string/jumbo v4, "pm.precompile_layouts"

    const/4 v10, 0x0

    .line 303
    invoke-static {v4, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1c7

    .line 304
    iget-object v4, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/dex/ArtManagerService;->compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    :cond_1c7
    if-eqz p4, :cond_1cb

    const/4 v15, 0x4

    goto :goto_1cc

    :cond_1cb
    const/4 v15, 0x0

    :goto_1cc
    if-nez p3, :cond_1d0

    or-int/lit16 v15, v15, 0x400

    .line 320
    :cond_1d0
    new-instance v4, Lcom/android/server/pm/dex/DexoptOptions;

    .line 321
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v0, v15}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 320
    invoke-virtual {v1, v4}, Lcom/android/server/pm/DexOptHelper;->performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_203

    if-eqz v0, :cond_16f

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1ff

    if-eq v0, v9, :cond_171

    const-string v4, "PackageManager"

    .line 339
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected dexopt return code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_171

    :cond_1ff
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_171

    :cond_203
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_171

    :cond_207
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v5, v0, v1

    const/4 v1, 0x1

    aput v6, v0, v1

    aput v7, v0, v9

    return-object v0
.end method

.method public performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 2

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    return p0
.end method

.method public performPackageDexOptUpgradeIfNeeded()V
    .registers 13
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_DEVICE_CONFIG"
    .end annotation

    const-string v0, "Only the system can request package update"

    .line 444
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string/jumbo v0, "runtime"

    const-string v1, "dexopt_system_ui_on_boot"

    .line 448
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 451
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->hasBcpApexesChanged()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 452
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper;->checkAndDexOptSystemUi()V

    .line 457
    :cond_27
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    .line 462
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isPreNUpgrade()Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_42

    :cond_40
    move v1, v2

    goto :goto_43

    :cond_42
    :goto_42
    move v1, v3

    .line 465
    :goto_43
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper;->prunedCacheByRecovery()Z

    move-result v4

    .line 468
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->hasBcpApexesChanged()Z

    move-result v5

    if-nez v0, :cond_54

    if-nez v1, :cond_54

    if-nez v4, :cond_54

    if-nez v5, :cond_54

    return-void

    :cond_54
    const/4 v6, 0x5

    .line 476
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@Start dexopt on updatePackagesIfNeeded. firstBoot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", upgrade: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", causePrunedCacheByRecovery: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", apexesUpdated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    if-nez v0, :cond_b5

    if-nez v1, :cond_b5

    if-nez v4, :cond_b5

    if-eqz v5, :cond_b5

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper;->mDesignatedPkg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_94
    :goto_94
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 489
    iget-object v6, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_94

    .line 491
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    :cond_b2
    move-object v7, v0

    move v11, v3

    goto :goto_eb

    .line 496
    :cond_b5
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v4}, Lcom/android/server/pm/DexOptHelper;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v0

    .line 500
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v2

    .line 501
    :goto_d3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e9

    .line 502
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_d3

    :cond_e9
    move v11, v2

    move-object v7, v4

    .line 506
    :goto_eb
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v8, 0x1

    xor-int/lit8 v9, v1, 0x1

    const/4 v10, 0x0

    move-object v6, p0

    .line 507
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/DexOptHelper;->performDexOptUpgrade(Ljava/util/List;ZIZZ)[I

    move-result-object v0

    .line 512
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 513
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v1, v4

    .line 515
    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 517
    iget-object v5, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    aget v2, v0, v2

    const-string/jumbo v6, "opt_dialog_num_dexopted"

    invoke-static {v5, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 518
    iget-object v2, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    aget v3, v0, v3

    const-string/jumbo v5, "opt_dialog_num_skipped"

    invoke-static {v2, v5, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 519
    iget-object v2, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    aget v0, v0, v3

    const-string/jumbo v3, "opt_dialog_num_failed"

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 520
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 521
    invoke-virtual {p0, v4}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string/jumbo v3, "opt_dialog_num_total"

    .line 520
    invoke-static {v0, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 522
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "opt_dialog_time_s"

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final prunedCacheByRecovery()Z
    .registers 4

    .line 414
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arm64"

    .line 415
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 417
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/recovery/pruning_arm64"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 419
    :cond_14
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/recovery/pruning_arm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    :goto_1b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "PackageManager"

    if-eqz v1, :cond_41

    .line 423
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "/data/dalvik-cache/"

    .line 428
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Installer;->deleteDirectoryContents(Ljava/lang/String;)Z

    move-result p0
    :try_end_33
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2b .. :try_end_33} :catch_34

    return p0

    :catch_34
    move-exception p0

    const-string v0, "Failed to delete dalvik-cache"

    .line 430
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    :cond_3b
    const-string p0, "Failed to erase pruning marker"

    .line 433
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_41
    const-string p0, "Failed to open pruning marker"

    .line 436
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    const/4 p0, 0x0

    return p0
.end method
