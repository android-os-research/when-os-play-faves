.class public final Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"

# interfaces
.implements Landroid/app/AppOpsManager$HistoricalOpsVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StringDumpVisitor"
.end annotation


# instance fields
.field public final mAttributionPrefix:Ljava/lang/String;

.field public final mDate:Ljava/util/Date;

.field public final mDateFormatter:Ljava/text/SimpleDateFormat;

.field public final mEntryPrefix:Ljava/lang/String;

.field public final mFilter:I

.field public final mFilterAttributionTag:Ljava/lang/String;

.field public final mFilterOp:I

.field public final mFilterPackage:Ljava/lang/String;

.field public final mFilterUid:I

.field public final mNow:J

.field public final mOpsPrefix:Ljava/lang/String;

.field public final mPackagePrefix:Ljava/lang/String;

.field public final mUidPrefix:Ljava/lang/String;

.field public final mUidStatePrefix:Ljava/lang/String;

.field public final mWriter:Ljava/io/PrintWriter;

.field public final synthetic this$0:Lcom/android/server/appop/HistoricalRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 11

    .line 1822
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->this$0:Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mNow:J

    .line 1803
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    .line 1805
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    .line 1823
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mAttributionPrefix:Ljava/lang/String;

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    .line 1829
    iput-object p3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    .line 1830
    iput p4, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterUid:I

    .line 1831
    iput-object p5, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1832
    iput-object p6, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterAttributionTag:Ljava/lang/String;

    .line 1833
    iput p7, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterOp:I

    .line 1834
    iput p8, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    return-void
.end method


# virtual methods
.method public visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 4

    .line 1884
    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1885
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1884
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 1888
    :cond_13
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mAttributionPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1889
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Attribution "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1890
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1891
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1896
    iget v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_13

    iget v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterOp:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    if-eq v2, v3, :cond_13

    return-void

    .line 1899
    :cond_13
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1901
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1902
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 1903
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_37
    if-ge v5, v3, :cond_f2

    .line 1905
    invoke-virtual {v2, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1906
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v8

    .line 1907
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v9

    .line 1909
    invoke-virtual {v1, v8, v8, v9}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    const-string v15, " = "

    const/16 v16, 0x1

    if-lez v14, :cond_77

    .line 1912
    iget-object v14, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1913
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1914
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1917
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v14, "access="

    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1918
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    move/from16 v4, v16

    goto :goto_78

    :cond_77
    const/4 v4, 0x0

    .line 1920
    :goto_78
    invoke-virtual {v1, v8, v8, v9}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v10

    cmp-long v14, v10, v12

    const-string v12, ", "

    if-lez v14, :cond_ae

    if-nez v4, :cond_9c

    .line 1923
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v13, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1924
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1925
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v4, v16

    goto :goto_a1

    .line 1928
    :cond_9c
    iget-object v13, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v13, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1930
    :goto_a1
    iget-object v13, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v14, "reject="

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1931
    iget-object v13, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v13, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1933
    :cond_ae
    invoke-virtual {v1, v8, v8, v9}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_e5

    if-nez v4, :cond_d0

    .line 1936
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v10, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1937
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1938
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d7

    .line 1941
    :cond_d0
    iget-object v6, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v16, v4

    .line 1943
    :goto_d7
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v6, "duration="

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1944
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move/from16 v4, v16

    :cond_e5
    if-eqz v4, :cond_ee

    .line 1947
    iget-object v4, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ee
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_37

    :cond_f2
    return-void
.end method

.method public visitHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 8

    .line 1839
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1840
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "snapshot:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1843
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "begin = "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1844
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1845
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1846
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "  ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mNow:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1848
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "end = "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1851
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 1852
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1853
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mNow:J

    sub-long/2addr v0, v3

    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1855
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 4

    .line 1872
    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1873
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1872
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 1876
    :cond_13
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1877
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1878
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1879
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 4

    .line 1860
    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterUid:I

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    .line 1863
    :cond_f
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1864
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1865
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Uid "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result p1

    invoke-static {v0, p1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1867
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
