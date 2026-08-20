.class public final Lcom/android/server/appop/HistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Persistence"
.end annotation


# static fields
.field public static final ATTR_ACCESS_COUNT:Ljava/lang/String; = "ac"

.field public static final ATTR_ACCESS_DURATION:Ljava/lang/String; = "du"

.field public static final ATTR_BEGIN_TIME:Ljava/lang/String; = "beg"

.field public static final ATTR_END_TIME:Ljava/lang/String; = "end"

.field public static final ATTR_NAME:Ljava/lang/String; = "na"

.field public static final ATTR_OVERFLOW:Ljava/lang/String; = "ov"

.field public static final ATTR_REJECT_COUNT:Ljava/lang/String; = "rc"

.field public static final ATTR_VERSION:Ljava/lang/String; = "ver"

.field public static final CURRENT_VERSION:I = 0x2

.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "Persistence"

.field public static final TAG_ATTRIBUTION:Ljava/lang/String; = "ftr"

.field public static final TAG_HISTORY:Ljava/lang/String; = "history"

.field public static final TAG_OP:Ljava/lang/String; = "op"

.field public static final TAG_OPS:Ljava/lang/String; = "ops"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final TAG_STATE:Ljava/lang/String; = "st"

.field public static final TAG_UID:Ljava/lang/String; = "uid"

.field public static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field public final mBaseSnapshotInterval:J

.field public final mIntervalCompressionMultiplier:J


# direct methods
.method public static bridge synthetic -$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .registers 12

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smspliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 848
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 849
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "history"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 845
    iput-wide p3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    return-void
.end method

.method public static clearHistoryDLocked()V
    .registers 1

    .line 873
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    return-void
.end method

.method public static enforceOpsWellFormed(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 1627
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_ae

    .line 1630
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1631
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_93

    .line 1635
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_78

    if-eqz v0, :cond_74

    .line 1640
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_59

    .line 1644
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3e

    goto :goto_74

    .line 1645
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non increasing ops:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intersecting ops:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    :goto_74
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_9

    .line 1636
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin after end:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1632
    :cond_93
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty ops:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    return-void
.end method

.method public static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1745
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_b

    .line 1747
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1749
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1750
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    .line 1751
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_21
    return-object v0
.end method

.method public static normalizeSnapshotForSlotDuration(Ljava/util/List;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J)V"
        }
    .end annotation

    .line 1693
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_68

    .line 1695
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1696
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v6, v0, -0x1

    :goto_1b
    if-ltz v6, :cond_65

    .line 1699
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1700
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v8

    .line 1701
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v4

    if-gtz v10, :cond_35

    goto :goto_65

    :cond_35
    long-to-float v8, v8

    .line 1706
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v9

    long-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1707
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-ltz v9, :cond_4d

    .line 1708
    invoke-interface {p0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 1710
    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_62

    :cond_4d
    float-to-double v8, v8

    .line 1712
    invoke-static {v7, v8, v9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v8

    if-eqz v8, :cond_57

    .line 1715
    invoke-virtual {v1, v8}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 1717
    :cond_57
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 1718
    invoke-interface {p0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_62
    :goto_62
    add-int/lit8 v6, v6, -0x1

    goto :goto_1b

    :cond_65
    :goto_65
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_68
    return-void
.end method

.method public static opsToDebugString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1733
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_24

    const-string v3, "  "

    .line 1735
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_21

    const/16 v3, 0xa

    .line 1738
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1741
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 3

    .line 1678
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method public static spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 3

    .line 1665
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearHistoryDLocked(ILjava/lang/String;)V
    .registers 6

    .line 857
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    .line 863
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 864
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 867
    :cond_1a
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 869
    invoke-virtual {p0, v0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    return-void
.end method

.method public final collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 974
    :try_start_1
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v18
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_37

    .line 980
    :try_start_7
    invoke-static/range {v18 .. v18}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v17

    const/4 v2, 0x1

    new-array v14, v2, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    .line 982
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v2

    .line 989
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_32

    return-object v2

    :catchall_32
    move-exception v0

    move-object v2, v0

    move-object/from16 v0, v18

    goto :goto_3a

    :catchall_37
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_3a
    const-string v3, "Error reading historical app ops. Deleting history."

    .line 992
    invoke-static {v3, v2, v0}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 993
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    return-object v1
.end method

.method public final collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .registers 23

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    .line 956
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 960
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_28

    .line 962
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    move-object v4, p1

    .line 963
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_28
    return-void
.end method

.method public final collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[J",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v4, p14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v15, p11

    move-object/from16 v16, p12

    move/from16 v17, p14

    move-object/from16 v18, p15

    .line 1007
    iget-wide v2, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v2, v2

    int-to-double v11, v4

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    iget-wide v11, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v19, v2, v11

    move-wide/from16 v2, v19

    .line 1009
    iget-wide v11, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v11, v11

    add-int/lit8 v14, v4, 0x1

    int-to-double v4, v14

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    iget-wide v11, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v11, v4

    move-wide v4, v11

    move-wide/from16 v21, v11

    sub-long v11, p7, v19

    move/from16 p14, v14

    const-wide/16 v13, 0x0

    .line 1012
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    move-wide/from16 v13, v21

    move-wide/from16 v11, v23

    sub-long v19, p9, v19

    move/from16 v21, p14

    move-wide/from16 v25, v13

    move-wide/from16 v13, v19

    .line 1016
    invoke-virtual/range {v0 .. v18}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_5d

    .line 1022
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    return-object p13

    :cond_5d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, v23

    move-wide/from16 v9, v19

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, v21

    move-object/from16 v27, v15

    move-object/from16 v15, p15

    .line 1027
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 1034
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_86
    if-ge v2, v1, :cond_96

    .line 1036
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v4, v25

    .line 1037
    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :cond_96
    move-object/from16 v1, v27

    if-eqz v1, :cond_b5

    if-nez v0, :cond_a1

    .line 1043
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1046
    :cond_a1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a7
    if-ltz v2, :cond_b5

    .line 1048
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_a7

    :cond_b5
    return-object v0
.end method

.method public final computeGlobalIntervalBeginMillis(I)J
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_15

    long-to-double v0, v0

    .line 1655
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v3, v3

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    double-to-long v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1657
    :cond_15
    iget-wide p0, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public final generateFile(Ljava/io/File;I)Ljava/io/File;
    .registers 5

    .line 852
    invoke-virtual {p0, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->computeGlobalIntervalBeginMillis(I)J

    move-result-wide v0

    .line 853
    new-instance p0, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getLastPersistTimeMillisDLocked()J
    .registers 10

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 924
    :try_start_3
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_48

    .line 925
    :try_start_9
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 926
    array-length v5, v4

    if-lez v5, :cond_42

    .line 928
    array-length v2, v4

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v2, :cond_3a

    aget-object v6, v4, v5

    .line 929
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    .line 930
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_25

    goto :goto_37

    :cond_25
    if-nez p0, :cond_28

    goto :goto_36

    .line 935
    :cond_28
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_37

    :goto_36
    move-object p0, v6

    :cond_37
    :goto_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_3a
    if-nez p0, :cond_3d

    return-wide v0

    .line 942
    :cond_3d
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 944
    :cond_42
    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_46

    goto :goto_55

    :catchall_46
    move-exception p0

    goto :goto_4b

    :catchall_48
    move-exception v2

    move-object v3, p0

    move-object p0, v2

    :goto_4b
    const-string v2, "Error reading historical app ops. Deleting history."

    .line 946
    invoke-static {v2, p0, v3}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 947
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    :goto_55
    return-wide v0
.end method

.method public final handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v1, p5

    .line 1059
    iget-wide v6, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v6, v6

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v8, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v13, v6, v8

    .line 1061
    iget-wide v6, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v6, v6

    add-int/lit8 v0, v1, 0x1

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v8, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v19, v6, v8

    if-eqz v2, :cond_13b

    .line 1064
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_30

    goto/16 :goto_13b

    .line 1083
    :cond_30
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    const/16 v21, 0x0

    move/from16 v7, v21

    :goto_38
    if-ge v7, v6, :cond_47

    .line 1085
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    neg-long v9, v13

    .line 1086
    invoke-virtual {v8, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_47
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/high16 v11, -0x8000000000000000L

    const-wide v15, 0x7fffffffffffffffL

    move-wide/from16 v22, v13

    move-wide v13, v15

    const/16 v15, 0x1f

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v22

    move-wide/from16 v4, v19

    move/from16 v17, p5

    .line 1094
    invoke-virtual/range {v0 .. v18}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 1107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_96

    .line 1110
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1111
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    move/from16 v2, v21

    :goto_88
    if-ge v2, v1, :cond_98

    .line 1113
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1114
    invoke-virtual {v6, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    :cond_96
    move-object/from16 v3, p3

    .line 1128
    :cond_98
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_a2

    .line 1130
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a2
    const-wide/16 v2, 0x0

    .line 1150
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v7, v5

    move/from16 v6, v21

    :goto_ad
    if-ge v6, v0, :cond_10f

    .line 1152
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1155
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v19

    if-gtz v9, :cond_c1

    move-object v11, v4

    move-wide/from16 v9, v22

    goto :goto_f2

    .line 1158
    :cond_c1
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v19

    if-gez v9, :cond_ee

    .line 1160
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v19

    move-wide/from16 v9, v22

    cmp-long v11, v2, v9

    if-lez v11, :cond_ec

    long-to-double v2, v2

    .line 1163
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v2, v11

    .line 1164
    invoke-static {v8, v2, v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 1165
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v19

    move-wide/from16 v25, v11

    move-object v11, v2

    move-wide/from16 v2, v25

    goto :goto_f2

    :cond_ec
    move-object v11, v4

    goto :goto_f2

    :cond_ee
    move-wide/from16 v9, v22

    move-object v11, v8

    move-object v8, v4

    :goto_f2
    if-eqz v8, :cond_fe

    if-nez v7, :cond_fb

    .line 1175
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    :cond_fb
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fe
    if-eqz v11, :cond_10a

    if-nez v5, :cond_107

    .line 1181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    :cond_107
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10a
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v22, v9

    goto :goto_ad

    :cond_10f
    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v11, p5

    move-wide/from16 v9, v22

    .line 1192
    invoke-virtual {v6, v8, v11}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p4

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v7, :cond_12c

    .line 1196
    invoke-static {v7, v9, v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->normalizeSnapshotForSlotDuration(Ljava/util/List;J)V

    .line 1197
    invoke-virtual {v6, v7, v2, v3, v0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V

    :cond_12c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, p4

    move/from16 v5, v24

    .line 1205
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    return-void

    :cond_13b
    :goto_13b
    move/from16 v24, v0

    move v11, v1

    move-object v6, v4

    move-object v8, v5

    move-object v4, v3

    move-object v3, v2

    .line 1065
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_176

    move-object/from16 v2, p2

    .line 1067
    invoke-virtual {v6, v2, v11}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_167

    .line 1069
    invoke-virtual {v6, v8, v11}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    .line 1070
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    :cond_167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, v24

    .line 1072
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    :cond_176
    return-void
.end method

.method public persistHistoricalOpsDLocked(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 882
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    move-result-object v2

    .line 883
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    .line 889
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 890
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 895
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    goto :goto_24

    :catchall_18
    move-exception p0

    const/4 p1, 0x0

    const-string v0, "Failed to write historical app ops, restoring backup"

    .line 897
    invoke-static {v0, p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 898
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p0}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    :goto_24
    return-void
.end method

.method public final readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v11, p4

    const-string/jumbo v0, "na"

    .line 1406
    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1a

    move-object/from16 v0, p5

    .line 1407
    invoke-static {v0, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1409
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x0

    return-object v0

    .line 1412
    :cond_1a
    invoke-interface/range {p4 .. p4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v14, p1

    .line 1413
    :cond_20
    :goto_20
    invoke-static {v11, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1414
    invoke-interface/range {p4 .. p4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "op"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, p0

    move-object v1, v14

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    .line 1415
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Landroid/util/TypedXmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    if-nez v14, :cond_20

    move-object v14, v0

    goto :goto_20

    :cond_4c
    return-object v14
.end method

.method public final readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Landroid/util/TypedXmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v10, p5

    const/4 v0, 0x0

    const-string/jumbo v1, "na"

    .line 1432
    invoke-interface {v10, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_1e

    .line 1434
    invoke-static {v11}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p6

    .line 1433
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1435
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0

    .line 1438
    :cond_1e
    invoke-interface/range {p5 .. p5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    move-object v13, p1

    .line 1439
    :cond_23
    :goto_23
    invoke-static {v10, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1440
    invoke-interface/range {p5 .. p5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "st"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v11

    move-object/from16 v6, p5

    move/from16 v7, p8

    move-wide/from16 v8, p9

    .line 1441
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILandroid/util/TypedXmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    if-nez v13, :cond_23

    move-object v13, v0

    goto :goto_23

    :cond_4d
    return-object v13
.end method

.method public final readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[J)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1254
    :try_start_2
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_ab

    .line 1255
    :try_start_7
    invoke-static {v15}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const-string/jumbo v2, "history"

    .line 1256
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v2, "ver"

    const/4 v3, 0x0

    .line 1260
    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_88

    const-string/jumbo v2, "ov"

    const-wide/16 v4, 0x0

    .line 1266
    invoke-interface {v0, v3, v2, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16

    .line 1267
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v14

    move-object/from16 v18, v3

    .line 1268
    :goto_2b
    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "ops"

    .line 1269
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    move-object/from16 v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v19, v14

    move-object/from16 v14, p12

    .line 1270
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    if-nez v2, :cond_5c

    goto :goto_78

    .line 1277
    :cond_5c
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1278
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_78

    :cond_66
    if-nez v18, :cond_6e

    .line 1282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_70

    :cond_6e
    move-object/from16 v3, v18

    .line 1284
    :goto_70
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v3

    goto :goto_78

    :cond_76
    move/from16 v19, v14

    :goto_78
    move/from16 v14, v19

    goto :goto_2b

    :cond_7b
    if-eqz p12, :cond_84

    const/4 v0, 0x0

    .line 1288
    aget-wide v2, p12, v0

    add-long v2, v2, v16

    aput-wide v2, p12, v0
    :try_end_84
    .catchall {:try_start_7 .. :try_end_84} :catchall_9f

    .line 1290
    :cond_84
    :try_start_84
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_84 .. :try_end_87} :catch_ab

    return-object v18

    .line 1262
    :cond_88
    :try_start_88
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping unsupported history version 1 for file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9f
    .catchall {:try_start_88 .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v0

    move-object v2, v0

    .line 1254
    :try_start_a1
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    goto :goto_aa

    :catchall_a5
    move-exception v0

    move-object v3, v0

    :try_start_a7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_aa
    throw v2
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_ab} :catch_ab

    .line 1291
    :catch_ab
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No history file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "JJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[JI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p17

    move-object/from16 v3, p18

    .line 1217
    invoke-virtual {p0, p1, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    if-eqz v3, :cond_13

    .line 1219
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_13
    cmp-long v2, p11, p13

    if-gez v2, :cond_5f

    cmp-long v2, p13, p2

    if-gez v2, :cond_1c

    goto :goto_5f

    :cond_1c
    sub-long v4, p4, p2

    .line 1226
    iget-wide v6, v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    div-long/2addr v4, v6

    add-long v4, p4, v4

    if-eqz p16, :cond_29

    const/4 v2, 0x0

    .line 1228
    aget-wide v6, p16, v2

    goto :goto_2b

    :cond_29
    const-wide/16 v6, 0x0

    :goto_2b
    add-long/2addr v4, v6

    cmp-long v2, p11, v4

    if-gez v2, :cond_4f

    .line 1229
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_4f

    :cond_37
    move-object v0, p0

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move/from16 v11, p15

    move-object/from16 v12, p16

    .line 1238
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4f
    :goto_4f
    if-eqz v3, :cond_5a

    .line 1230
    invoke-interface/range {p18 .. p18}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_5a

    :cond_58
    const/4 v0, 0x0

    return-object v0

    .line 1232
    :cond_5a
    :goto_5a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1224
    :cond_5f
    :goto_5f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v11, p3

    const-string/jumbo v0, "na"

    .line 1381
    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1a

    move-object/from16 v0, p4

    .line 1382
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1383
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x0

    return-object v0

    .line 1386
    :cond_1a
    invoke-interface/range {p3 .. p3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v14, p1

    .line 1387
    :cond_20
    :goto_20
    invoke-static {v11, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1388
    invoke-interface/range {p3 .. p3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ftr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, p0

    move-object v1, v14

    move/from16 v2, p2

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    .line 1389
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    if-nez v14, :cond_20

    move-object v14, v0

    goto :goto_20

    :cond_4b
    return-object v14
.end method

.method public final readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v11, p2

    const/4 v0, 0x0

    const-string/jumbo v1, "na"

    .line 1356
    invoke-interface {v11, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_16

    move/from16 v1, p3

    if-eq v1, v12, :cond_16

    .line 1358
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0

    .line 1361
    :cond_16
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v14, p1

    .line 1362
    :cond_1c
    :goto_1c
    invoke-static {v11, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1363
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v0, p0

    move-object v1, v14

    move v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    .line 1364
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    if-nez v14, :cond_1c

    move-object v14, v0

    goto :goto_1c

    :cond_48
    return-object v14
.end method

.method public readHistoryDLocked()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 910
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryRawDLocked()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 913
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1b

    .line 915
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    return-object v0
.end method

.method public readHistoryRawDLocked()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/16 v10, 0x1f

    move-object v0, p0

    .line 903
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public final readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILandroid/util/TypedXmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p6

    const/4 v1, 0x0

    const-string/jumbo v2, "na"

    .line 1455
    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 1456
    invoke-static {v2, v3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v4

    and-int v4, v4, p7

    if-nez v4, :cond_13

    return-object v1

    .line 1460
    :cond_13
    invoke-static {v2, v3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v2

    const-string v3, "ac"

    const-wide/16 v14, 0x0

    .line 1461
    invoke-interface {v0, v1, v3, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v3, v5, v14

    if-lez v3, :cond_4b

    .line 1463
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_31

    long-to-double v5, v5

    mul-double v5, v5, p8

    .line 1464
    invoke-static {v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v5

    double-to-long v5, v5

    :cond_31
    move-wide v12, v5

    if-nez p1, :cond_3a

    .line 1468
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v3, v14, v15, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    goto :goto_3c

    :cond_3a
    move-object/from16 v3, p1

    :goto_3c
    move-object v5, v3

    move/from16 v6, p5

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move v10, v2

    move v11, v4

    .line 1470
    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_4d

    :cond_4b
    move-object/from16 v3, p1

    :goto_4d
    const-string/jumbo v5, "rc"

    .line 1473
    invoke-interface {v0, v1, v5, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, v14

    if-lez v7, :cond_7c

    .line 1475
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_66

    long-to-double v5, v5

    mul-double v5, v5, p8

    .line 1476
    invoke-static {v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v5

    double-to-long v5, v5

    :cond_66
    move-wide v12, v5

    if-nez v3, :cond_6e

    .line 1480
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v3, v14, v15, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    :cond_6e
    move-object v5, v3

    move/from16 v6, p5

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move v10, v2

    move v11, v4

    .line 1482
    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    :cond_7c
    const-string v5, "du"

    .line 1485
    invoke-interface {v0, v1, v5, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v5, v0, v14

    if-lez v5, :cond_ab

    .line 1487
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_94

    long-to-double v0, v0

    mul-double v0, v0, p8

    .line 1488
    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v0

    double-to-long v0, v0

    :cond_94
    move-wide v12, v0

    if-nez v3, :cond_9d

    .line 1492
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v14, v15, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v3, v0

    :cond_9d
    move-object v5, v3

    move/from16 v6, p5

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move v10, v2

    move v11, v4

    .line 1494
    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    :cond_ab
    return-object v3
.end method

.method public final readeHistoricalOpsDLocked(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v11, p1

    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    const/4 v4, 0x0

    const-string v5, "beg"

    const-wide/16 v6, 0x0

    .line 1312
    invoke-interface {v11, v4, v5, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v5, 0x0

    if-eqz p12, :cond_15

    .line 1313
    aget-wide v12, p12, v5

    goto :goto_16

    :cond_15
    move-wide v12, v6

    :goto_16
    add-long/2addr v8, v12

    const-string v10, "end"

    .line 1314
    invoke-interface {v11, v4, v10, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz p12, :cond_22

    .line 1315
    aget-wide v14, p12, v5

    goto :goto_23

    :cond_22
    move-wide v14, v6

    :goto_23
    add-long/2addr v12, v14

    cmp-long v5, v2, v8

    if-gez v5, :cond_29

    return-object v4

    :cond_29
    cmp-long v5, v0, v12

    if-lez v5, :cond_33

    .line 1322
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v6, v7, v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    return-object v0

    .line 1324
    :cond_33
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 1325
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long v0, v6, v14

    long-to-double v0, v0

    sub-long/2addr v12, v8

    long-to-double v2, v12

    div-double v12, v0, v2

    .line 1333
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    move-object v10, v4

    .line 1334
    :goto_47
    invoke-static {v11, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1335
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide v7, v6

    move-object/from16 v6, p5

    move-wide/from16 v16, v7

    move/from16 v7, p6

    move/from16 v8, p11

    move/from16 v18, v9

    move-object v11, v10

    move-wide v9, v12

    .line 1336
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    if-nez v11, :cond_7a

    move-object v10, v0

    goto :goto_7b

    :cond_7a
    move-object v10, v11

    :goto_7b
    move-object/from16 v11, p1

    move-wide/from16 v6, v16

    move/from16 v9, v18

    goto :goto_47

    :cond_82
    move-object v11, v10

    move-object/from16 v11, p1

    goto :goto_47

    :cond_86
    move-wide/from16 v16, v6

    move-object v11, v10

    if-eqz v11, :cond_90

    move-wide/from16 v0, v16

    .line 1345
    invoke-virtual {v11, v14, v15, v0, v1}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    :cond_90
    return-object v11
.end method

.method public final writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ftr"

    .line 1569
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1570
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-static {p2, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1571
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_21

    .line 1573
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 1574
    invoke-virtual {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Landroid/util/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1576
    :cond_21
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Landroid/util/TypedXmlSerializer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1581
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1582
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_32

    :cond_d
    const/4 v1, 0x0

    const-string/jumbo v2, "op"

    .line 1585
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1586
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    const-string/jumbo v4, "na"

    invoke-interface {p2, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1587
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_2f

    .line 1589
    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLandroid/util/TypedXmlSerializer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1591
    :cond_2f
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_32
    :goto_32
    return-void
.end method

.method public final writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "ops"

    .line 1531
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1532
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    const-string v4, "beg"

    invoke-interface {p2, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1533
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    const-string v4, "end"

    invoke-interface {p2, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1534
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_2a

    .line 1536
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v4

    .line 1537
    invoke-virtual {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/util/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1539
    :cond_2a
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "history"

    .line 1502
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p4

    .line 1504
    :try_start_9
    invoke-static {p4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    .line 1505
    invoke-interface {v1, v2, v3}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1507
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1508
    invoke-interface {v1, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "ver"

    const/4 v4, 0x2

    .line 1509
    invoke-interface {v1, v3, v2, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_30

    const-string/jumbo v2, "ov"

    .line 1511
    invoke-interface {v1, v3, v2, p2, p3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_30
    if-eqz p1, :cond_45

    .line 1514
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_37
    if-ge p3, p2, :cond_45

    .line 1516
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1517
    invoke-virtual {p0, v2, v1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/TypedXmlSerializer;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_37

    .line 1520
    :cond_45
    invoke-interface {v1, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1521
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1522
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p0, p4}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_50} :catch_51

    return-void

    :catch_51
    move-exception p0

    .line 1524
    sget-object p1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p1, p4}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1525
    throw p0
.end method

.method public final writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "pkg"

    .line 1556
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1557
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1558
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    .line 1560
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    .line 1561
    invoke-virtual {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/util/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1563
    :cond_22
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    .line 1544
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1545
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1546
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    .line 1548
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    .line 1549
    invoke-virtual {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/util/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1551
    :cond_22
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLandroid/util/TypedXmlSerializer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1596
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result p0

    .line 1597
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v0

    .line 1599
    invoke-virtual {p1, p0, p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v1

    .line 1600
    invoke-virtual {p1, p0, p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v3

    .line 1601
    invoke-virtual {p1, p0, p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide p0

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-gtz v0, :cond_23

    cmp-long v7, v3, v5

    if-gtz v7, :cond_23

    cmp-long v7, p0, v5

    if-gtz v7, :cond_23

    return-void

    :cond_23
    const/4 v7, 0x0

    const-string/jumbo v8, "st"

    .line 1607
    invoke-interface {p4, v7, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "na"

    .line 1608
    invoke-interface {p4, v7, v9, p2, p3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v0, :cond_37

    const-string p2, "ac"

    .line 1610
    invoke-interface {p4, v7, p2, v1, v2}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_37
    cmp-long p2, v3, v5

    if-lez p2, :cond_41

    const-string/jumbo p2, "rc"

    .line 1613
    invoke-interface {p4, v7, p2, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_41
    cmp-long p2, p0, v5

    if-lez p2, :cond_4a

    const-string p2, "du"

    .line 1616
    invoke-interface {p4, v7, p2, p0, p1}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1618
    :cond_4a
    invoke-interface {p4, v7, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
