.class public Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidObserverController$UidObserverRegistration;,
        Lcom/android/server/am/UidObserverController$ChangeRecord;
    }
.end annotation


# static fields
.field public static final SLOW_UID_OBSERVER_THRESHOLD_MS:I = 0x14

.field public static final VALIDATE_UID_STATES:Z = true


# instance fields
.field public mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public final mAvailUidChanges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mDispatchRunnable:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingUidChanges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mUidChangeDispatchCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUidObservers:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUidObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 61
    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 67
    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance p1, Lcom/android/server/am/ActiveUids;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-void
.end method

.method public static mergeWithPendingChange(II)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_7

    and-int/lit8 v0, p1, 0x6

    or-int/2addr p0, v0

    :cond_7
    and-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_e

    and-int/lit8 v0, p1, 0x18

    or-int/2addr p0, v0

    :cond_e
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_14

    and-int/lit8 p0, p0, -0xd

    :cond_14
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_1a

    or-int/lit8 p0, p0, 0x20

    :cond_1a
    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-eqz v1, :cond_21

    or-int/2addr p0, v0

    :cond_21
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_27

    or-int/lit8 p0, p0, 0x40

    :cond_27
    return p0
.end method


# virtual methods
.method public dispatchUidsChanged()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    array-length v2, v2

    if-ge v2, v1, :cond_12

    .line 190
    new-array v2, v1, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    :cond_12
    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_32

    .line 193
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 194
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-virtual {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v6

    aput-object v6, v5, v3

    .line 195
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    .line 196
    iput-boolean v2, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 198
    :cond_32
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 199
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_56

    const-string v3, "ActivityManager"

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** Delivering "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid changes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_56
    iget v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 203
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_f7

    .line 205
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_62
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_7b

    .line 207
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IUidObserver;

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 208
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 207
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/am/UidObserverController;->dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V

    move v0, v3

    goto :goto_62

    .line 210
    :cond_7b
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 212
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_de

    move v0, v2

    :goto_89
    if-ge v0, v1, :cond_de

    .line 214
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v3, v3, v0

    .line 215
    iget v4, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_9d

    .line 216
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v3, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->remove(I)V

    goto :goto_db

    .line 218
    :cond_9d
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v6, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    if-nez v4, :cond_b6

    .line 220
    new-instance v4, Lcom/android/server/am/UidRecord;

    iget v6, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    .line 221
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v7, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v6, v7, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 223
    :cond_b6
    iget v6, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_c0

    .line 224
    invoke-virtual {v4, v5}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    goto :goto_c7

    :cond_c0
    and-int/lit8 v5, v6, 0x4

    if-eqz v5, :cond_c7

    .line 226
    invoke-virtual {v4, v2}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 228
    :cond_c7
    :goto_c7
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 229
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 230
    iget v5, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 231
    iget v3, v3, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v4, v3}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    :goto_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 236
    :cond_de
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    move v0, v2

    :goto_e2
    if-ge v0, v1, :cond_f2

    .line 238
    :try_start_e4
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v0

    .line 239
    iput-boolean v2, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 240
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e2

    .line 242
    :cond_f2
    monitor-exit v3

    return-void

    :catchall_f4
    move-exception p0

    monitor-exit v3
    :try_end_f6
    .catchall {:try_start_e4 .. :try_end_f6} :catchall_f4

    throw p0

    :catchall_f7
    move-exception p0

    .line 203
    :try_start_f8
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw p0
.end method

.method public final dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V
    .registers 24

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v8, ": "

    if-nez v6, :cond_9

    return-void

    :cond_9
    const/4 v9, 0x0

    move/from16 v10, p3

    move v11, v9

    :goto_d
    if-ge v11, v10, :cond_1e4

    move-object/from16 v12, p0

    .line 252
    :try_start_11
    iget-object v0, v12, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v13, v0, v11

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 254
    iget v5, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    const/high16 v0, -0x80000000

    const/4 v3, 0x1

    if-ne v5, v0, :cond_29

    .line 255
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/2addr v0, v3

    if-nez v0, :cond_29

    goto/16 :goto_1df

    :cond_29
    const/16 v4, 0x40

    if-ne v5, v4, :cond_36

    .line 261
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_31} :catch_1e4

    and-int/2addr v0, v4

    if-nez v0, :cond_36

    goto/16 :goto_1df

    :cond_36
    and-int/lit8 v0, v5, 0x2

    const-string v1, "UID active uid="

    const-string v2, "ActivityManager"

    if-eqz v0, :cond_68

    .line 268
    :try_start_3e
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_91

    .line 269
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_60

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID idle uid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_60
    iget v0, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v4, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v6, v0, v4}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    goto :goto_91

    :cond_68
    and-int/lit8 v0, v5, 0x4

    if-eqz v0, :cond_91

    .line 275
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_91

    .line 276
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_8c

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_8c
    iget v0, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v0}, Landroid/app/IUidObserver;->onUidActive(I)V

    .line 282
    :cond_91
    :goto_91
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_de

    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_bd

    .line 284
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_b7

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID cached uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_b7
    iget v0, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v0, v3}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    goto :goto_de

    :cond_bd
    and-int/lit8 v0, v5, 0x10

    if-eqz v0, :cond_de

    .line 289
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_d9

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_d9
    iget v0, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v0, v9}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    :cond_de
    :goto_de
    and-int/lit8 v0, v5, 0x1

    const/16 v4, 0x14

    if-eqz v0, :cond_11b

    .line 296
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10d

    .line 297
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_106

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID gone uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_106
    iget v0, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v6, v0, v1}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    .line 302
    :cond_10d
    iget-object v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_116

    .line 303
    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_116
    move/from16 v17, v3

    move v9, v4

    goto/16 :goto_1cb

    .line 307
    :cond_11b
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_150

    .line 309
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    if-ltz v0, :cond_14e

    .line 310
    iget-object v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v3, :cond_14a

    .line 313
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    if-gt v0, v1, :cond_13b

    const/4 v0, 0x1

    goto :goto_13c

    :cond_13b
    move v0, v9

    .line 314
    :goto_13c
    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    if-gt v1, v3, :cond_146

    const/4 v1, 0x1

    goto :goto_147

    :cond_146
    move v1, v9

    :goto_147
    if-eq v0, v1, :cond_150

    goto :goto_14e

    .line 317
    :cond_14a
    iget v0, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    if-eq v0, v4, :cond_150

    :cond_14e
    :goto_14e
    const/4 v0, 0x1

    goto :goto_151

    :cond_150
    move v0, v9

    .line 321
    :goto_151
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_161

    and-int/lit8 v1, v5, 0x20

    if-eqz v1, :cond_15f

    const/4 v1, 0x1

    goto :goto_160

    :cond_15f
    move v1, v9

    :goto_160
    or-int/2addr v0, v1

    :cond_161
    if-eqz v0, :cond_1b3

    .line 325
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_18d

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID CHANGED uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_18d
    iget-object v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_198

    .line 330
    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v2, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    :cond_198
    iget v1, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v2, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    move/from16 v18, v5

    iget-wide v4, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iget v0, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    const/16 v9, 0x14

    const/16 v16, 0x40

    const/16 v17, 0x1

    move-wide v3, v4

    move/from16 v5, v19

    invoke-interface/range {v0 .. v5}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    goto :goto_1ba

    :cond_1b3
    move v9, v4

    move/from16 v18, v5

    const/16 v16, 0x40

    const/16 v17, 0x1

    .line 336
    :goto_1ba
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1cb

    and-int/lit8 v0, v18, 0x40

    if-eqz v0, :cond_1cb

    .line 338
    iget v0, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v0}, Landroid/app/IUidObserver;->onUidProcAdjChanged(I)V

    .line 341
    :cond_1cb
    :goto_1cb
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v14

    long-to-int v0, v0

    .line 342
    iget v1, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    if-ge v1, v0, :cond_1d7

    .line 343
    iput v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    :cond_1d7
    if-lt v0, v9, :cond_1df

    .line 346
    iget v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_1df
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_1df} :catch_1e4

    :cond_1df
    :goto_1df
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto/16 :goto_d

    :catch_1e4
    :cond_1e4
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 358
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v1, :cond_38

    .line 362
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 363
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_22

    .line 364
    invoke-static {v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    :cond_22
    if-nez v4, :cond_2a

    const-string v4, "  mUidObservers:"

    .line 366
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 369
    :cond_2a
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/IUidObserver;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 373
    :cond_38
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  mUidChangeDispatchCount="

    .line 374
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    iget p2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 376
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  Slow UID dispatches:"

    .line 377
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4d
    if-ge v2, v1, :cond_8c

    .line 379
    iget-object p2, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 380
    invoke-virtual {p2, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    const-string v3, "    "

    .line 381
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUidObserver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": "

    .line 383
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    iget v3, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " / Max "

    .line 385
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget p2, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo p2, "ms"

    .line 387
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 389
    :cond_8c
    monitor-exit v0

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 9

    .line 393
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2b

    .line 396
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 397
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_20

    .line 398
    invoke-static {v3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_20
    const-wide v4, 0x20b00000017L

    .line 399
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 402
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .registers 12

    .line 407
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .registers 12

    .line 412
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    return-void
.end method

.method public enqueueUidChange(Lcom/android/server/am/UidObserverController$ChangeRecord;IIIJIZ)I
    .registers 12

    .line 96
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1d

    .line 98
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_16

    const-string v1, "ActivityManager"

    const-string v2, "*** Enqueueing dispatch uid changed!"

    .line 99
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    if-eqz p1, :cond_20

    goto :goto_24

    .line 105
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object p1

    .line 106
    :goto_24
    iget-boolean v1, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    if-nez v1, :cond_31

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 108
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 110
    :cond_31
    iget p0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    invoke-static {p3, p0}, Lcom/android/server/am/UidObserverController;->mergeWithPendingChange(II)I

    move-result p3

    .line 113
    :goto_37
    iput p2, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 114
    iput p3, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 115
    iput p4, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 116
    iput-wide p5, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 117
    iput p7, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 118
    iput-boolean p8, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 120
    monitor-exit v0

    return p3

    :catchall_45
    move-exception p0

    .line 121
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public getDispatchRunnableForTest()Ljava/lang/Runnable;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "ActivityManager"

    if-lez v0, :cond_2d

    .line 171
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 172
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_4a

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving available item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 176
    :cond_2d
    new-instance p0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {p0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    .line 177
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_4a

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocating new item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    return-object p0
.end method

.method public getPendingUidChangesForTest()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getValidateUidRecord(I)Lcom/android/server/am/UidRecord;
    .registers 2

    .line 354
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    return-object p0
.end method

.method public getValidateUidsForTest()Lcom/android/server/am/ActiveUids;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-object p0
.end method

.method public register(Landroid/app/IUidObserver;IILjava/lang/String;I)V
    .registers 8

    .line 82
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    invoke-direct {v1, p5, p4, p2, p3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public unregister(Landroid/app/IUidObserver;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 91
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
