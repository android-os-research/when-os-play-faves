.class public Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredBootCompletedBroadcastPerUser"
.end annotation


# instance fields
.field public mBootCompletedBroadcastReceived:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mLockedBootCompletedBroadcastReceived:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetBootCompletedBroadcastsReceiversSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetBootCompletedBroadcastsUidsSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    .line 255
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    .line 260
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 268
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 275
    iput p1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUserId:I

    return-void
.end method


# virtual methods
.method public final dequeueDeferredBootCompletedBroadcast(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Z)Lcom/android/server/am/BroadcastRecord;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            "Z)",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_9e

    .line 348
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-nez p3, :cond_18

    .line 349
    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 350
    :cond_18
    :goto_18
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    .line 351
    sget-boolean p3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz p3, :cond_91

    .line 352
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 353
    instance-of v0, p3, Lcom/android/server/am/BroadcastFilter;

    const-string v3, " broadcast:"

    const-string v4, "getDeferredBootCompletedBroadcast uid:"

    const-string v5, "BroadcastDispatcher"

    if-eqz v0, :cond_5f

    .line 354
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_91

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " BroadcastFilter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 357
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 355
    invoke-static {v5, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 360
    :cond_5f
    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 361
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 362
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_91

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 365
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 363
    invoke-static {v5, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_91
    :goto_91
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 371
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_9d

    .line 374
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_9d
    return-object p0

    :cond_9e
    const/4 p0, 0x0

    return-object p0
.end method

.method public dequeueDeferredBootCompletedBroadcast(Z)Lcom/android/server/am/BroadcastRecord;
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dequeueDeferredBootCompletedBroadcast(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-nez v0, :cond_12

    .line 338
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dequeueDeferredBootCompletedBroadcast(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public dump(Lcom/android/server/am/BroadcastDispatcher$Dumper;Ljava/lang/String;)V
    .registers 5

    .line 420
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 p2, 0x0

    .line 424
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_c
    if-ge p2, v0, :cond_1a

    .line 425
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_1a
    return-void
.end method

.method public final dumpBootCompletedBroadcastRecord(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .line 439
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_63

    .line 440
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 442
    instance-of v3, v2, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_21

    .line 443
    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 444
    iget-object v2, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_29

    .line 446
    :cond_21
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 447
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 449
    :goto_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " receivers:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastDispatcher"

    .line 449
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_63
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 430
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 431
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 433
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1e
    if-ge v1, v0, :cond_2e

    .line 434
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public final enqueueBootCompletedBroadcasts(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 317
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_18

    .line 318
    invoke-virtual {p3, p0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_15

    .line 319
    invoke-virtual {p3, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_15
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    .line 322
    :cond_18
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    if-ge v1, p0, :cond_39

    .line 323
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 324
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    invoke-virtual {p3, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_36

    .line 327
    invoke-virtual {p3, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_39
    return-void
.end method

.method public enqueueBootCompletedBroadcasts(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 292
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 294
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mLockedBootCompletedBroadcastReceived:Z

    .line 295
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz p1, :cond_36

    .line 296
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dumpBootCompletedBroadcastRecord(Landroid/util/SparseArray;)V

    goto :goto_36

    :cond_1c
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 299
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 301
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mBootCompletedBroadcastReceived:Z

    .line 302
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz p1, :cond_36

    .line 303
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dumpBootCompletedBroadcastRecord(Landroid/util/SparseArray;)V

    :cond_36
    :goto_36
    return-void
.end method

.method public final getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I
    .registers 5

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 413
    :cond_8
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, p1

    :goto_d
    if-ge p1, v0, :cond_1f

    .line 414
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1f
    return v1
.end method

.method public final getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I
    .registers 2

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 399
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 384
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 385
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    goto :goto_17

    :cond_b
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 386
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 387
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public updateUidReady(I)V
    .registers 4

    .line 279
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mLockedBootCompletedBroadcastReceived:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 280
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_12

    .line 281
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 283
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mBootCompletedBroadcastReceived:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 284
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_23

    .line 285
    :cond_1e
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_23
    return-void
.end method
