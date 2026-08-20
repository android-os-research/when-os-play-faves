.class public final Lcom/android/server/print/UserState$PrintJobForAppCache;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrintJobForAppCache"
.end annotation


# instance fields
.field public final mPrintJobsForRunningApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPrintJobsForRunningApp(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/print/UserState;)V
    .registers 2

    .line 1750
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1751
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrintJobForAppCache-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1844
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v8, :cond_63

    .line 1846
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 1847
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/List;

    .line 1848
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_21
    if-ge v14, v13, :cond_5e

    const-wide v1, 0x20b00000005L

    const-string v3, "cached_print_jobs"

    .line 1850
    invoke-virtual {v7, v3, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide v1, 0x10500000001L

    const-string v3, "app_id"

    .line 1853
    invoke-virtual {v7, v3, v1, v2, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1855
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v1}, Lcom/android/server/print/UserState;->-$$Nest$fgetmContext(Lcom/android/server/print/UserState;)Landroid/content/Context;

    move-result-object v1

    const-wide v15, 0x10b00000002L

    .line 1856
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/print/PrintJobInfo;

    const-string/jumbo v3, "print_job"

    move-object/from16 v2, p1

    move/from16 v17, v10

    move-wide v9, v4

    move-wide v4, v15

    .line 1855
    invoke-static/range {v1 .. v6}, Lcom/android/internal/print/DumpUtils;->writePrintJobInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintJobInfo;)V

    .line 1858
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v17

    goto :goto_21

    :cond_5e
    move/from16 v17, v10

    add-int/lit8 v10, v17, 0x1

    goto :goto_b

    :cond_63
    return-void
.end method

.method public getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 8

    .line 1799
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->-$$Nest$fgetmLock(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1800
    :try_start_7
    iget-object p0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p2, 0x0

    if-nez p0, :cond_14

    .line 1802
    monitor-exit v0

    return-object p2

    .line 1804
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_30

    .line 1806
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJobInfo;

    .line 1807
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1808
    monitor-exit v0

    return-object v3

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1811
    :cond_30
    monitor-exit v0

    return-object p2

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public getPrintJobs(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 1816
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->-$$Nest$fgetmLock(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-ne p1, v2, :cond_29

    .line 1819
    :try_start_b
    iget-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, p1, :cond_3b

    .line 1821
    iget-object v3, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v1, :cond_23

    .line 1823
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1825
    :cond_23
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1828
    :cond_29
    iget-object p0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3b

    .line 1831
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1833
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    if-eqz v1, :cond_3f

    .line 1837
    monitor-exit v0

    return-object v1

    .line 1839
    :cond_3f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_45
    move-exception p0

    .line 1840
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_b .. :try_end_47} :catchall_45

    throw p0
.end method

.method public onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1757
    :try_start_1
    new-instance v1, Lcom/android/server/print/UserState$PrintJobForAppCache$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache$1;-><init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_2d

    .line 1770
    iget-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {p1}, Lcom/android/server/print/UserState;->-$$Nest$fgetmLock(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1771
    :try_start_10
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_24

    .line 1773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    iget-object p0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1776
    :cond_24
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1777
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_2a
    move-exception p0

    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_2a

    throw p0

    :catch_2d
    return v0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 7

    .line 1782
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->-$$Nest$fgetmLock(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1783
    :try_start_7
    iget-object p0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 1784
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v1

    .line 1783
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_17

    .line 1786
    monitor-exit v0

    return-void

    .line 1788
    :cond_17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_38

    .line 1790
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJobInfo;

    .line 1791
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1792
    invoke-interface {p0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1795
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw p0
.end method
