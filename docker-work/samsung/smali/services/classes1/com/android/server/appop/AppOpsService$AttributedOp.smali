.class public final Lcom/android/server/appop/AppOpsService$AttributedOp;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AttributedOp"
.end annotation


# instance fields
.field public mAccessEvents:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AppOpsService.this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mInProgressEvents:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AppOpsService.this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mPausedInProgressEvents:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AppOpsService.this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mRejectEvents:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "AppOpsService.this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final tag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public static synthetic $r8$lambda$ZGA_7NvYHWnZdMHS8yC9scCLWa4(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->lambda$startedOrPaused$0(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmInProgressEvents(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPausedInProgressEvents(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .registers 4

    .line 964
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    .line 966
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    return-void
.end method

.method public static synthetic lambda$startedOrPaused$0(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .registers 2

    .line 1118
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$smonClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public accessed(ILjava/lang/String;Ljava/lang/String;III)V
    .registers 28

    move-object/from16 v11, p0

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    move-wide v1, v12

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 982
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;III)V

    .line 985
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide v7, v12

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 989
    iget-object v14, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v15, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v1, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v2, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    if-nez v2, :cond_47

    move-object/from16 v19, p3

    goto :goto_49

    :cond_47
    move-object/from16 v19, v2

    :goto_49
    move/from16 v16, v1

    move-object/from16 v17, v0

    move-object/from16 v18, p2

    move/from16 v20, p4

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public accessed(JJILjava/lang/String;Ljava/lang/String;III)V
    .registers 24

    move-object v0, p0

    move/from16 v1, p5

    .line 1007
    invoke-static/range {p8 .. p9}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v2

    .line 1009
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v4, :cond_13

    .line 1010
    new-instance v4, Landroid/util/LongSparseArray;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    :cond_13
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_25

    .line 1015
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpEventProxyInfoPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    :cond_25
    move-object v10, v4

    .line 1019
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v5, :cond_40

    .line 1021
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpEventProxyInfoPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v11

    move-wide v6, p1

    move-wide/from16 v8, p3

    move/from16 v12, p10

    invoke-virtual/range {v5 .. v12}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;I)V

    goto :goto_50

    .line 1023
    :cond_40
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance v1, Landroid/app/AppOpsManager$NoteOpEvent;

    move-object v5, v1

    move-wide v6, p1

    move-wide/from16 v8, p3

    move/from16 v11, p10

    invoke-direct/range {v5 .. v11}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;I)V

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_50
    return-void
.end method

.method public final add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    if-nez p2, :cond_6

    return-object p1

    .line 1401
    :cond_6
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p0, :cond_31

    .line 1403
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 1404
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 1405
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v4, :cond_2b

    .line 1407
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-lez v4, :cond_2e

    .line 1408
    :cond_2b
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_31
    return-object p1
.end method

.method public add(Lcom/android/server/appop/AppOpsService$AttributedOp;)V
    .registers 7

    .line 1424
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1425
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1426
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_17

    :cond_15
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 1427
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " app-ops, running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOps"

    .line 1427
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v1, :cond_59

    .line 1432
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1434
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->finish()V

    .line 1435
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmInProgressStartOpEventPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 1439
    :cond_59
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 1440
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    return-void
.end method

.method public createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 19

    move-object/from16 v0, p0

    .line 1475
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 1478
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1480
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v1, :cond_1f

    .line 1483
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    :cond_1f
    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_5a

    .line 1487
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1489
    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v8

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v7

    new-instance v15, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 1490
    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v12

    sub-long v12, v2, v12

    .line 1491
    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v14

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$Op;->mSettedUid:I

    move-object v9, v15

    move-wide/from16 v16, v2

    move-object v2, v15

    move v15, v6

    invoke-direct/range {v9 .. v15}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;I)V

    .line 1489
    invoke-virtual {v1, v7, v8, v2}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v2, v16

    goto :goto_20

    :cond_5a
    move-object v9, v1

    .line 1495
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v10

    .line 1497
    new-instance v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v7, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v8

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Op;->mSettedUid:I

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;I)V

    return-object v1
.end method

.method public createPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 1246
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    return-void
.end method

.method public final deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p1

    .line 1465
    :cond_3
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    .line 1466
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, p0}, Landroid/util/LongSparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, p0, :cond_24

    .line 1468
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    new-instance v4, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct {v4, v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_24
    return-object v0
.end method

.method public final finishOrPause(Landroid/os/IBinder;ZZ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    goto :goto_14

    :cond_13
    const/4 v3, -0x1

    :goto_14
    if-gez v3, :cond_1a

    .line 1161
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finishPossiblyPaused(Landroid/os/IBinder;Z)V

    return-void

    .line 1165
    :cond_1a
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    const/4 v4, 0x1

    if-nez v2, :cond_2a

    .line 1167
    iget v5, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    sub-int/2addr v5, v4

    iput v5, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1170
    :cond_2a
    iget v5, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    if-eqz v5, :cond_30

    if-eqz v2, :cond_e1

    :cond_30
    if-nez v2, :cond_3a

    .line 1172
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->finish()V

    .line 1173
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1176
    :cond_3a
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_45

    .line 1177
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 1180
    :cond_45
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_57

    .line 1181
    new-instance v3, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object v11, v3

    goto :goto_58

    :cond_57
    move-object v11, v4

    .line 1184
    :goto_58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v7

    sub-long v9, v5, v7

    .line 1185
    new-instance v3, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v7

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v12, v5, Lcom/android/server/appop/AppOpsService$Op;->mSettedUid:I

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;I)V

    .line 1187
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1190
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v7, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v8, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    .line 1191
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v11

    .line 1192
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v12

    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v13

    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v15

    .line 1193
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v17

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v18

    .line 1190
    invoke-virtual/range {v6 .. v18}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJJII)V

    if-nez v2, :cond_e1

    .line 1196
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmInProgressStartOpEventPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 1197
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 1198
    iput-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p2, :cond_e1

    .line 1201
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v2

    if-nez v2, :cond_e1

    .line 1202
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v5, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/4 v8, 0x0

    .line 1203
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v9

    .line 1204
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v10

    .line 1202
    invoke-static/range {v3 .. v10}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpActiveChangedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_e1
    return-void
.end method

.method public final finishPossiblyPaused(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v0

    const-string v1, "AppOps"

    if-nez v0, :cond_e

    const-string p0, "No ops running or paused"

    .line 1214
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1218
    :cond_e
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1c

    const-string p0, "No op running or paused for the client"

    .line 1220
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    if-eqz p2, :cond_1f

    return-void

    .line 1228
    :cond_1f
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1229
    iget v0, p2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    if-nez v0, :cond_48

    .line 1231
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1232
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmInProgressStartOpEventPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 1233
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_48

    const/4 p1, 0x0

    .line 1234
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_48
    return-void
.end method

.method public finished(Landroid/os/IBinder;)V
    .registers 3

    const/4 v0, 0x1

    .line 1146
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final finished(Landroid/os/IBinder;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1150
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method public hasAnyTime()Z
    .registers 2

    .line 1452
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_a
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz p0, :cond_16

    .line 1453
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    if-lez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isPaused()Z
    .registers 1

    .line 1448
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 1444
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onClientDeath(Landroid/os/IBinder;)V
    .registers 5

    .line 1317
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 1318
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1319
    monitor-exit v0

    return-void

    .line 1322
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1323
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1c

    :cond_1a
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 1324
    :goto_1c
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    if-eqz v1, :cond_27

    const/4 v2, 0x1

    .line 1326
    iput v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1329
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 1330
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public onUidStateChanged(I)V
    .registers 24

    move-object/from16 v11, p0

    move/from16 v12, p1

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1343
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1345
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1c

    :cond_1a
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 1347
    :goto_1c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 1348
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v10, 0x0

    move-object v9, v0

    move v8, v10

    :goto_2c
    if-ge v8, v14, :cond_10a

    .line 1350
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    if-eqz v0, :cond_fd

    .line 1352
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v1

    if-eq v1, v12, :cond_fd

    .line 1356
    :try_start_40
    iget v7, v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    const/4 v6, 0x1

    .line 1357
    iput v6, v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1358
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    .line 1360
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v11, v2, v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;Z)V

    if-eqz v1, :cond_8f

    .line 1365
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v3

    .line 1366
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1367
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v16

    const/16 v17, 0x0

    .line 1368
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v18

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v19
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_70} :catch_dd

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, p1

    move/from16 v20, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v17

    move/from16 v21, v8

    move v8, v13

    move-object/from16 v17, v9

    move/from16 v9, v18

    move/from16 v18, v10

    move/from16 v10, v19

    .line 1365
    :try_start_8b
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_8e} :catch_ba

    goto :goto_b5

    :cond_8f
    move/from16 v20, v6

    move/from16 v16, v7

    move/from16 v21, v8

    move-object/from16 v17, v9

    move/from16 v18, v10

    .line 1370
    :try_start_99
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1371
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v6

    const/4 v7, 0x0

    .line 1372
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v10

    move-object/from16 v0, p0

    move/from16 v5, p1

    move v8, v13

    .line 1370
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_b5} :catch_d8

    :goto_b5
    if-eqz v13, :cond_bf

    .line 1375
    :try_start_b7
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_b9} :catch_ba

    goto :goto_c1

    :catch_ba
    move-object/from16 v9, v17

    move/from16 v10, v21

    goto :goto_e2

    :cond_bf
    :try_start_bf
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_c1} :catch_d8

    :goto_c1
    move-object v9, v0

    move/from16 v10, v21

    .line 1376
    :try_start_c4
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    if-eqz v0, :cond_104

    .line 1378
    iget v1, v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v7, v16, -0x1

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_d7} :catch_e2

    goto :goto_104

    :catch_d8
    move/from16 v10, v21

    move-object/from16 v9, v17

    goto :goto_e2

    :catch_dd
    move-object/from16 v17, v9

    move/from16 v18, v10

    move v10, v8

    .line 1381
    :catch_e2
    :goto_e2
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_104

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to new uidState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    :cond_fd
    move-object/from16 v17, v9

    move/from16 v18, v10

    move v10, v8

    move-object/from16 v9, v17

    :cond_104
    :goto_104
    add-int/lit8 v8, v10, 0x1

    move/from16 v10, v18

    goto/16 :goto_2c

    :cond_10a
    return-void
.end method

.method public pause()V
    .registers 13

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1258
    :cond_7
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 1259
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_13
    const/4 v0, 0x0

    .line 1262
    :goto_14
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_4f

    .line 1263
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1264
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmClientId(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmClientId(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 1267
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v7, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/4 v9, 0x0

    .line 1269
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11

    .line 1267
    invoke-static/range {v4 .. v11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpActiveChangedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_4f
    const/4 v0, 0x0

    .line 1271
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public rejected(III)V
    .registers 11

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(JIII)V

    .line 1036
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, p3, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v1, p3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, p3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v3, p3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public rejected(JIII)V
    .registers 15

    .line 1049
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide p3

    .line 1051
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v0, :cond_10

    .line 1052
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 1056
    :cond_10
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v1, :cond_2a

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 1058
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpEventProxyInfoPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v7

    move-wide v2, p1

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;I)V

    goto :goto_3a

    .line 1060
    :cond_2a
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v7, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v7

    move-wide v1, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;I)V

    invoke-virtual {p0, p3, p4, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_3a
    return-void
.end method

.method public resume()V
    .registers 37

    move-object/from16 v0, p0

    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 1283
    :cond_9
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1a

    .line 1284
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 1286
    :cond_1a
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 1287
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    move v1, v2

    .line 1289
    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1290
    :goto_32
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_d4

    .line 1291
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1292
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-static {v13}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmClientId(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v13, v3, v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fputmStartElapsedTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V

    .line 1294
    invoke-static {v13, v14, v15}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fputmStartTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V

    .line 1295
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmUidState(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v9

    invoke-static {v13}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmFlags(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v10

    .line 1297
    invoke-virtual {v13}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v12

    invoke-virtual {v13}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v16

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-wide v10, v14

    move-object/from16 v17, v13

    move/from16 v13, v16

    .line 1295
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    if-eqz v1, :cond_a7

    .line 1299
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/16 v23, 0x1

    .line 1300
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v24

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v25

    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    .line 1299
    invoke-static/range {v18 .. v25}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpActiveChangedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    .line 1304
    :cond_a7
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    .line 1305
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x2

    .line 1306
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v34

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v35

    move-object/from16 v26, v3

    move/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v4

    move-object/from16 v30, v7

    .line 1304
    invoke-static/range {v26 .. v35}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpStartedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_32

    :cond_d4
    const/4 v1, 0x0

    .line 1308
    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 1080
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$AttributedOp;->started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZII)V

    return-void
.end method

.method public final started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZII)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 1090
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    return-void
.end method

.method public final startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p5

    if-eqz p7, :cond_26

    .line 1100
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    if-nez v1, :cond_26

    if-eqz p8, :cond_26

    .line 1101
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v2 .. v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpActiveChangedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_26
    const/4 v13, 0x1

    if-eqz p8, :cond_35

    .line 1105
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_35

    .line 1106
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v13}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_42

    :cond_35
    if-nez p8, :cond_42

    .line 1107
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_42

    .line 1108
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v13}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_42
    :goto_42
    if-eqz p8, :cond_47

    .line 1111
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_49

    :cond_47
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_49
    move-object v12, v1

    .line 1113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1114
    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    if-nez v1, :cond_8c

    .line 1116
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmInProgressStartOpEventPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v1

    .line 1117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    new-instance v2, Lcom/android/server/appop/AppOpsService$AttributedOp$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp$$ExternalSyntheticLambda0;-><init>()V

    .line 1118
    invoke-static {v2, v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v8

    move-wide/from16 v2, v16

    move-object/from16 v6, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v0, v12

    move/from16 v12, p5

    move/from16 v18, v13

    move/from16 v13, p6

    move/from16 v14, p9

    move/from16 v15, p10

    .line 1116
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->acquire(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    move-result-object v1

    move-object/from16 v2, p1

    .line 1121
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    move-object/from16 v0, p0

    goto :goto_9b

    :cond_8c
    move/from16 v18, v13

    .line 1123
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmUidState(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v0

    move/from16 v12, p5

    if-eq v12, v0, :cond_89

    move-object/from16 v0, p0

    .line 1124
    invoke-virtual {v0, v12}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onUidStateChanged(I)V

    .line 1128
    :goto_9b
    iget v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    if-eqz p8, :cond_e0

    .line 1131
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, v16

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 1135
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    if-nez v0, :cond_d4

    move-object/from16 v7, p4

    goto :goto_d5

    :cond_d4
    move-object v7, v0

    :goto_d5
    move-object v0, v1

    move v1, v3

    move v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_e0
    return-void
.end method
