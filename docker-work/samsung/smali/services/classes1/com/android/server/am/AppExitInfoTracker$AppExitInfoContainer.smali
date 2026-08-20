.class public final Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppExitInfoContainer"
.end annotation


# instance fields
.field public mInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxCapacity:I

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public static synthetic $r8$lambda$3t67QZ_iHktRg5HfUve8Fl-jj6Q(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->lambda$getExitInfoLocked$1(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UFEmPr-4Q7RVTgJrOMYqKxm5muY(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->lambda$getExitInfoLocked$0(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$je1rirOXtchdmoslIyyOxi6GFNY(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->lambda$dumpLocked$2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmUid(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;I)V
    .registers 3

    .line 1356
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 1358
    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    return-void
.end method

.method public static synthetic lambda$dumpLocked$2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 4

    .line 1491
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getExitInfoLocked$0(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 4

    .line 1377
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getExitInfoLocked$1(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 4

    .line 1397
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    if-lt v0, v1, :cond_44

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v0, :cond_2c

    .line 1414
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationExitInfo;

    .line 1415
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_29

    .line 1416
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v1

    move-wide v2, v1

    move v1, v4

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2c
    if-ltz v1, :cond_44

    .line 1421
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1423
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1425
    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1429
    :cond_44
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v0

    .line 1430
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v1

    .line 1431
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, v2, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-static {v2, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$smfindAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    .line 1433
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, v2, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-static {v2, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$smfindAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 1434
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 1435
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public appendTraceIfNecessaryLocked(ILjava/io/File;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ApplicationExitInfo;

    if-eqz p1, :cond_16

    .line 1442
    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 1443
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-virtual {p1, p0}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public destroyLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_25

    .line 1452
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 1453
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1455
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1b
    const/4 v2, 0x0

    .line 1457
    invoke-virtual {v1, v2}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 1458
    invoke-virtual {v1, v2}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_25
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_1d

    .line 1489
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1491
    :cond_1d
    new-instance p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1492
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, p0, :cond_5a

    .line 1494
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4, p3}, Landroid/app/ApplicationExitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_5a
    return-void
.end method

.method public forEachRecordLocked(Ljava/util/function/BiFunction;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/app/ApplicationExitInfo;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_49

    .line 1465
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_49

    .line 1466
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_30

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2e

    goto :goto_46

    :cond_2e
    const/4 v0, 0x0

    goto :goto_46

    .line 1468
    :cond_30
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 1470
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1472
    :cond_41
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_49
    return-void
.end method

.method public getExitInfoLocked(IILjava/util/ArrayList;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    if-lez p1, :cond_11

    .line 1365
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ApplicationExitInfo;

    if-eqz p0, :cond_90

    .line 1367
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_90

    .line 1370
    :cond_11
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p2, :cond_78

    if-gt p1, p2, :cond_1d

    goto :goto_78

    :cond_1d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_46

    .line 1381
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationExitInfo;

    :goto_28
    if-ge v1, p1, :cond_42

    .line 1383
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 1384
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3f

    move-object p2, v0

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1388
    :cond_42
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 1391
    :cond_46
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 1392
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v0

    :goto_4e
    if-ge v2, p1, :cond_5e

    .line 1394
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 1396
    :cond_5e
    new-instance p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_66
    if-ge v0, p2, :cond_74

    .line 1399
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 1401
    :cond_74
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_90

    :cond_78
    :goto_78
    if-ge v0, p1, :cond_88

    .line 1374
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 1376
    :cond_88
    new-instance p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_90
    :goto_90
    return-void
.end method

.method public readFromProto(Landroid/util/proto/ProtoInputStream;J)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 1511
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    .line 1512
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    :goto_8
    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    goto :goto_34

    .line 1520
    :cond_12
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    const-wide v1, 0x20b00000002L

    .line 1521
    invoke-virtual {v0, p1, v1, v2}, Landroid/app/ApplicationExitInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1522
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_34

    :cond_29
    const-wide v0, 0x10500000001L

    .line 1517
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    .line 1514
    :goto_34
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    goto :goto_8

    .line 1526
    :cond_39
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1527
    iget p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    return p0
.end method

.method public toListLocked(Ljava/util/List;I)Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 1533
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_29

    if-eqz p2, :cond_1b

    .line 1536
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ne p2, v1, :cond_26

    .line 1537
    :cond_1b
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_29
    return-object p1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1500
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1501
    iget v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1502
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_2a

    .line 1504
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/ApplicationExitInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1506
    :cond_2a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
