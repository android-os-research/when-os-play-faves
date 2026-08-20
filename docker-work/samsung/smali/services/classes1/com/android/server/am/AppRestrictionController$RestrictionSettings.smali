.class public final Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RestrictionSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    }
.end annotation


# instance fields
.field public final mRestrictionLevels:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public static synthetic $r8$lambda$gDxxbRfkcs4k_MOGW2Iy-aH9_lI(Ljava/util/ArrayList;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->lambda$dump$1(Ljava/util/ArrayList;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vVkvGrzzeOXCioeXQUrD3M_GgSs(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->lambda$resetToDefault$0(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;ILjava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getLastRestrictionLevel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    return-void
.end method

.method public static synthetic lambda$dump$1(Ljava/util/ArrayList;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .registers 2

    .line 802
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$resetToDefault$0(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .registers 5

    const/4 v0, 0x0

    .line 786
    invoke-static {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 787
    invoke-static {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    const-wide/16 v1, 0x0

    .line 788
    invoke-static {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;J)V

    const/16 v3, 0x100

    .line 789
    invoke-static {p0, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 790
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    if-eqz v3, :cond_27

    .line 791
    :goto_17
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_27

    .line 792
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_27
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 9

    .line 1028
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 1029
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1030
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_16
    if-ltz v2, :cond_49

    .line 1031
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_20
    if-ltz v3, :cond_46

    .line 1032
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1033
    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1034
    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1033
    invoke-virtual {v5, v6, v7, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 1037
    :cond_49
    monitor-exit v1

    return-object v0

    :catchall_4b
    move-exception p0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_e .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 802
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 803
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_54

    .line 804
    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 805
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v1

    const/4 p0, 0x0

    .line 806
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_32
    if-ge p0, v3, :cond_53

    .line 807
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x23

    .line 808
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 809
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x20

    .line 810
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 811
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    invoke-virtual {v4, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->dump(Ljava/io/PrintWriter;J)V

    .line 812
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_32

    :cond_53
    return-void

    :catchall_54
    move-exception p0

    .line 803
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6e

    .line 1046
    instance-of v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    if-nez v2, :cond_c

    goto :goto_6e

    .line 1049
    :cond_c
    check-cast p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1051
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1052
    :try_start_17
    invoke-virtual {p1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    if-eq v3, v4, :cond_25

    .line 1053
    monitor-exit v2

    return v1

    .line 1055
    :cond_25
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_2c
    if-ltz v3, :cond_69

    .line 1056
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    .line 1057
    invoke-virtual {p1, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1058
    invoke-virtual {v6, v3}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v6

    if-eq v5, v6, :cond_42

    .line 1059
    monitor-exit v2

    return v1

    .line 1061
    :cond_42
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v5

    sub-int/2addr v5, v0

    :goto_49
    if-ltz v5, :cond_66

    .line 1062
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1063
    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v4, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 1064
    monitor-exit v2

    return v1

    :cond_63
    add-int/lit8 v5, v5, -0x1

    goto :goto_49

    :cond_66
    add-int/lit8 v3, v3, -0x1

    goto :goto_2c

    .line 1068
    :cond_69
    monitor-exit v2

    return v0

    :catchall_6b
    move-exception p0

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_17 .. :try_end_6d} :catchall_6b

    throw p0

    :cond_6e
    :goto_6e
    return v1
.end method

.method public forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_9

    return-void

    .line 711
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_38

    .line 713
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 714
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 715
    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getReason()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 714
    invoke-interface {p2, v3, v4, v2}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_38
    return-void
.end method

.method public forEachUidLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 722
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public final getLastRestrictionLevel(ILjava/lang/String;)I
    .registers 4

    .line 697
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 698
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-nez p0, :cond_13

    const/4 p0, 0x0

    goto :goto_17

    .line 700
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastRestrictionLevel()I

    move-result p0

    :goto_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    .line 701
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getReason(Ljava/lang/String;I)I
    .registers 4

    .line 653
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 654
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-eqz p0, :cond_16

    .line 655
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getReason()I

    move-result p0

    goto :goto_18

    :cond_16
    const/16 p0, 0x100

    .line 656
    :goto_18
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 657
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getRestrictionLevel(I)I
    .registers 7

    .line 661
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 662
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_12

    .line 664
    monitor-exit v0

    return v1

    .line 666
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v2

    if-nez v2, :cond_1c

    .line 668
    monitor-exit v0

    return v1

    :cond_1c
    move v3, v1

    :goto_1d
    if-ge v1, v2, :cond_38

    .line 672
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-eqz v4, :cond_35

    .line 674
    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v4

    if-nez v3, :cond_30

    goto :goto_34

    .line 675
    :cond_30
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_34
    move v3, v4

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 678
    :cond_38
    monitor-exit v0

    return v3

    :catchall_3a
    move-exception p0

    .line 679
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public getRestrictionLevel(ILjava/lang/String;)I
    .registers 4

    .line 683
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 684
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object p2

    if-nez p2, :cond_12

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result p0

    goto :goto_16

    :cond_12
    invoke-virtual {p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result p0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 687
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public getRestrictionLevel(Ljava/lang/String;I)I
    .registers 6

    .line 691
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0xc8000

    .line 692
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 693
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .line 728
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    return-object p0
.end method

.method public getXmlFileNameForUser(I)Ljava/io/File;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 829
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string p1, "apprestriction"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 831
    new-instance p0, Ljava/io/File;

    const-string/jumbo p1, "settings.xml"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public loadFromXml(IZ)V
    .registers 14

    .line 844
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object p1

    .line 845
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x2

    new-array v7, v0, [J

    .line 849
    :try_start_e
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_13} :catch_60

    .line 850
    :try_start_13
    invoke-static {v8}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p1

    .line 851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 853
    :goto_1b
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_52

    if-eq v1, v0, :cond_25

    goto :goto_1b

    .line 857
    :cond_25
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settings"

    .line 858
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "ActivityManager"

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_49
    move-object v1, p0

    move-object v2, p1

    move-wide v3, v9

    move-object v5, v7

    move v6, p2

    .line 862
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadOneFromXml(Landroid/util/TypedXmlPullParser;J[JZ)V
    :try_end_51
    .catchall {:try_start_13 .. :try_end_51} :catchall_56

    goto :goto_1b

    .line 867
    :cond_52
    :try_start_52
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_55} :catch_60

    goto :goto_60

    :catchall_56
    move-exception p0

    .line 849
    :try_start_57
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception p1

    :try_start_5c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_60} :catch_60

    :catch_60
    :goto_60
    return-void
.end method

.method public loadFromXml(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 837
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1a

    aget v3, v0, v2

    .line 838
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 840
    :cond_1a
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final loadOneFromXml(Landroid/util/TypedXmlPullParser;J[JZ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const/4 v4, 0x0

    .line 874
    :goto_7
    array-length v5, v2

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_11

    .line 875
    aput-wide v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    const/16 v5, 0x100

    move-wide v11, v6

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 883
    :goto_18
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v8, v9, :cond_99

    .line 885
    :try_start_1e
    invoke-interface {v1, v8}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 886
    invoke-interface {v1, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 887
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v16, :sswitch_data_11a

    goto :goto_67

    :sswitch_31
    const-string v13, "curlevel"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    move v13, v6

    goto :goto_68

    :sswitch_3b
    const-string/jumbo v13, "levelts"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    move v13, v3

    goto :goto_68

    :sswitch_46
    const-string/jumbo v13, "uid"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    const/4 v13, 0x0

    goto :goto_68

    :sswitch_51
    const-string/jumbo v13, "package"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    move v13, v7

    goto :goto_68

    :sswitch_5c
    const-string/jumbo v13, "reason"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    const/4 v13, 0x4

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v13, -0x1

    :goto_68
    if-eqz v13, :cond_8f

    if-eq v13, v7, :cond_8d

    if-eq v13, v6, :cond_88

    if-eq v13, v3, :cond_83

    const/4 v3, 0x4

    if-eq v13, v3, :cond_7e

    .line 905
    invoke-static {v9}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTimeAttrToType(Ljava/lang/String;)I

    move-result v3

    .line 906
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v2, v3

    goto :goto_94

    .line 901
    :cond_7e
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_94

    .line 898
    :cond_83
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_94

    .line 895
    :cond_88
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_94

    :cond_8d
    move-object v4, v10

    goto :goto_94

    .line 889
    :cond_8f
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_93} :catch_94

    move v14, v3

    :catch_94
    :goto_94
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v6, 0x0

    goto :goto_18

    :cond_99
    if-eqz v14, :cond_119

    .line 919
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 920
    :try_start_a2
    invoke-virtual {v0, v14, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v3

    if-nez v3, :cond_aa

    .line 922
    monitor-exit v1

    return-void

    :cond_aa
    const/4 v6, 0x0

    .line 924
    :goto_ab
    array-length v7, v2

    if-ge v6, v7, :cond_c7

    .line 925
    invoke-virtual {v3, v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_c3

    aget-wide v7, v2, v6

    cmp-long v13, v7, v9

    if-eqz v13, :cond_c3

    const/4 v13, 0x0

    .line 926
    invoke-virtual {v3, v6, v7, v8, v13}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V

    goto :goto_c4

    :cond_c3
    const/4 v13, 0x0

    :goto_c4
    add-int/lit8 v6, v6, 0x1

    goto :goto_ab

    .line 929
    :cond_c7
    invoke-static {v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v2

    if-lt v2, v15, :cond_cf

    .line 932
    monitor-exit v1

    return-void

    .line 934
    :cond_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_a2 .. :try_end_d0} :catchall_116

    .line 935
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v8

    .line 936
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v13, 0x0

    move-object v9, v4

    move-wide v6, v11

    move-wide/from16 v11, p2

    .line 935
    invoke-interface/range {v8 .. v13}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v13

    const v1, 0xff00

    if-eqz p5, :cond_101

    .line 938
    iget-object v8, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v8}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmEmptyTrackerInfo(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-result-object v12

    const/4 v2, 0x1

    and-int/2addr v1, v5

    and-int/lit16 v5, v5, 0xff

    move-object v9, v4

    move v10, v14

    move v11, v15

    move v14, v2

    move v15, v1

    move/from16 v16, v5

    invoke-static/range {v8 .. v16}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mapplyRestrictionLevel(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    goto :goto_107

    :cond_101
    and-int/2addr v1, v5

    and-int/lit16 v2, v5, 0xff

    .line 941
    invoke-virtual {v3, v15, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    .line 944
    :goto_107
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 946
    :try_start_10e
    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLevelChangeTime(J)V

    .line 947
    monitor-exit v2

    goto :goto_119

    :catchall_113
    move-exception v0

    monitor-exit v2
    :try_end_115
    .catchall {:try_start_10e .. :try_end_115} :catchall_113

    throw v0

    :catchall_116
    move-exception v0

    .line 934
    :try_start_117
    monitor-exit v1
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    throw v0

    :cond_119
    :goto_119
    return-void

    :sswitch_data_11a
    .sparse-switch
        -0x37ba6dbc -> :sswitch_5c
        -0x301acbba -> :sswitch_51
        0x1c450 -> :sswitch_46
        0x428d903 -> :sswitch_3b
        0x21f78144 -> :sswitch_31
    .end sparse-switch
.end method

.method public persistToXml(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 953
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 955
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v3, "ActivityManager"

    if-nez v2, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 956
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create folder for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 959
    :cond_2b
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 962
    :try_start_31
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 963
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->toXmlByteArray(I)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3c} :catch_40

    .line 971
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catch_40
    move-exception p0

    .line 965
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write file "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_5a

    .line 967
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_5a
    return-void
.end method

.method public removePackage(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    .line 744
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removePackage(Ljava/lang/String;IZ)V

    return-void
.end method

.method public removePackage(Ljava/lang/String;IZ)V
    .registers 7

    .line 748
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 749
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v1

    .line 750
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_21

    .line 751
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result p1

    if-nez p1, :cond_21

    .line 752
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 754
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_38

    if-eqz p3, :cond_37

    .line 755
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 756
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    :cond_37
    return-void

    :catchall_38
    move-exception p0

    .line 754
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public removeUid(I)V
    .registers 3

    const/4 v0, 0x1

    .line 761
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUid(IZ)V

    return-void
.end method

.method public removeUid(IZ)V
    .registers 5

    .line 765
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 766
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 767
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_23

    if-eqz p2, :cond_22

    .line 768
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 769
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    :cond_22
    return-void

    :catchall_23
    move-exception p0

    .line 767
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public removeUser(I)V
    .registers 5

    .line 732
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 733
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_26

    .line 734
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 735
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v2, p1, :cond_1e

    goto :goto_23

    .line 738
    :cond_1e
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    :goto_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 740
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public removeXml()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1021
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget v3, v0, v2

    .line 1022
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method

.method public reset()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 776
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_19

    .line 777
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 779
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public resetToDefault()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 785
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 796
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public scheduleLoadFromXml()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 824
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public schedulePersistToXml(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 818
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p0

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 819
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final toXmlByteArray(I)[B
    .registers 13

    const/4 v0, 0x0

    .line 978
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_aa

    .line 979
    :try_start_6
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 981
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 983
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_a0

    .line 984
    :try_start_16
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1e
    if-ltz v4, :cond_8e

    .line 985
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_28
    if-ltz v5, :cond_8b

    .line 986
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 987
    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getUid()I

    move-result v7

    .line 988
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-eq v8, p1, :cond_3d

    goto :goto_88

    :cond_3d
    const-string/jumbo v8, "settings"

    .line 991
    invoke-interface {v2, v0, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "uid"

    .line 992
    invoke-interface {v2, v0, v8, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "package"

    .line 993
    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v0, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "curlevel"

    .line 994
    invoke-static {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v8

    invoke-interface {v2, v0, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "levelts"

    .line 996
    invoke-static {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)J

    move-result-wide v8

    invoke-interface {v2, v0, v7, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "reason"

    .line 998
    invoke-static {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v8

    invoke-interface {v2, v0, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    :goto_71
    const/4 v8, 0x2

    if-ge v7, v8, :cond_82

    .line 1001
    invoke-static {v7}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTypeToTimeAttr(I)Ljava/lang/String;

    move-result-object v8

    .line 1002
    invoke-virtual {v6, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v9

    .line 1000
    invoke-interface {v2, v0, v8, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_71

    :cond_82
    const-string/jumbo v6, "settings"

    .line 1004
    invoke-interface {v2, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_88
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    :cond_8b
    add-int/lit8 v4, v4, -0x1

    goto :goto_1e

    .line 1007
    :cond_8e
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_16 .. :try_end_8f} :catchall_9d

    .line 1009
    :try_start_8f
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1010
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 1012
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_a0

    .line 1013
    :try_start_99
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_aa

    return-object p0

    :catchall_9d
    move-exception p0

    .line 1007
    :try_start_9e
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception p0

    .line 978
    :try_start_a1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    goto :goto_a9

    :catchall_a5
    move-exception p1

    :try_start_a6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a9
    throw p0
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_aa} :catch_aa

    :catch_aa
    return-object v0
.end method

.method public update(Ljava/lang/String;IIII)I
    .registers 8

    .line 639
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 640
    :try_start_7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v1

    if-nez v1, :cond_17

    .line 642
    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;-><init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V

    .line 643
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p2, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 645
    :cond_17
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    .line 646
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method
