.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# static fields
.field public static final CHANGE_ACTIVE:I = 0x4

.field public static final CHANGE_CACHED:I = 0x8

.field public static final CHANGE_CAPABILITY:I = 0x20

.field public static final CHANGE_GONE:I = 0x1

.field public static final CHANGE_IDLE:I = 0x2

.field public static final CHANGE_PROCADJ:I = 0x40

.field public static final CHANGE_PROCSTATE:I = -0x80000000

.field public static final CHANGE_UNCACHED:I = 0x10

.field public static ORIG_ENUMS:[I

.field public static PROTO_ENUMS:[I


# instance fields
.field public curProcStateSeq:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "networkStateUpdate"
        }
    .end annotation
.end field

.field public volatile hasInternetPermission:Z

.field public lastNetworkUpdatedProcStateSeq:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "networkStateUpdate"
        }
    .end annotation
.end field

.field public mCurAllowList:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCurCapability:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCurProcState:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mEphemeral:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mFGSFilter:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mForegroundServices:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mIdle:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mLastBackgroundTime:J
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mLastReportedChange:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mNumProcs:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mProcAdjChanged:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcRecords:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSetAllowList:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mSetCapability:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mSetIdle:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mSetProcState:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mUid:I

.field public final networkStateLock:Ljava/lang/Object;

.field public final pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public volatile procStateSeqWaitingForNetwork:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 134
    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    .line 143
    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        -0x80000000
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 47
    iput v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 160
    iput p1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 161
    iput-object p2, p0, Lcom/android/server/am/UidRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p2, :cond_28

    .line 162
    iget-object p1, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    iput-object p1, p0, Lcom/android/server/am/UidRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    return-void
.end method


# virtual methods
.method public addProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 331
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearProcAdjChanged()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14

    .line 357
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 358
    iget v0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 359
    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v0

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 360
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 361
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 362
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 363
    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide v4, 0x10b00000006L

    move-object v3, p1

    .line 363
    invoke-static/range {v3 .. v9}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 365
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    const-wide v1, 0x10800000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 366
    iget v6, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v6, :cond_64

    const-wide v4, 0x20e00000008L

    .line 367
    sget-object v7, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    sget-object v8, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    :cond_64
    const-wide v0, 0x10500000009L

    .line 370
    iget v2, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10b0000000aL

    .line 372
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    .line 373
    iget-wide v4, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000002L

    .line 374
    iget-wide v4, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 376
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 378
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public forEachProcess(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 314
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public getCurCapability()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 208
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return p0
.end method

.method public getCurProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 173
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return p0
.end method

.method public getFGSFilterStatus()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 298
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    return p0
.end method

.method public getLastBackgroundTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 228
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-wide v0
.end method

.method public getNumOfProcs()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 308
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public getProcAdjChanged()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 203
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return p0
.end method

.method public getProcessInPackage(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 321
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1f

    .line 322
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSetCapability()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 218
    iget p0, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return p0
.end method

.method public getSetProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 183
    iget p0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 168
    iget p0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    return p0
.end method

.method public hasForegroundServices()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 248
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return p0
.end method

.method public isCurAllowListed()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 258
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return p0
.end method

.method public isEphemeral()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 238
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return p0
.end method

.method public isIdle()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 278
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return p0
.end method

.method public isSetAllowListed()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 268
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return p0
.end method

.method public isSetIdle()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 288
    iget-boolean p0, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return p0
.end method

.method public noteProcAdjChanged()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return-void
.end method

.method public removeProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 336
    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/16 v0, 0x13

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 348
    iput v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return-void
.end method

.method public setCurAllowListed(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 263
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return-void
.end method

.method public setCurCapability(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 213
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return-void
.end method

.method public setCurProcState(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 178
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return-void
.end method

.method public setEphemeral(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 243
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return-void
.end method

.method public setFGSFilterStatus(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 303
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    return-void
.end method

.method public setForegroundServices(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 253
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return-void
.end method

.method public setIdle(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 283
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return-void
.end method

.method public setLastBackgroundTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 233
    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-void
.end method

.method public setLastReportedChange(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 341
    iput p1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    return-void
.end method

.method public setSetAllowListed(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 273
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return-void
.end method

.method public setSetCapability(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 223
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return-void
.end method

.method public setSetIdle(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 293
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return-void
.end method

.method public setSetProcState(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 188
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UidRecord{"

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    if-eqz v1, :cond_36

    const-string v1, " ephemeral"

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_36
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    if-eqz v1, :cond_3f

    const-string v1, " fgServices"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v1, :cond_48

    const-string v1, " allowlist"

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_48
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5f

    const-string v1, " bg:"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 402
    :cond_5f
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v1, :cond_68

    const-string v1, " idle"

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_68
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_eb

    const-string v1, " change:"

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 408
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_7f

    const-string/jumbo v1, "gone"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 412
    :cond_7f
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x2

    const-string/jumbo v4, "|"

    if-eqz v2, :cond_94

    if-eqz v1, :cond_8d

    .line 414
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8d
    const-string/jumbo v1, "idle"

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 419
    :cond_94
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a5

    if-eqz v1, :cond_9f

    .line 421
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    const-string v1, "active"

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 426
    :cond_a5
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b6

    if-eqz v1, :cond_b0

    .line 428
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b0
    const-string v1, "cached"

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    :cond_b6
    move v3, v1

    .line 433
    :goto_b7
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c8

    if-eqz v3, :cond_c2

    .line 435
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c2
    const-string/jumbo v1, "uncached"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_c8
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_da

    if-eqz v3, :cond_d4

    .line 441
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d4
    const-string/jumbo v1, "procstate"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_da
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_eb

    if-eqz v3, :cond_e5

    .line 447
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e5
    const-string/jumbo v1, "procadj"

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_eb
    const-string v1, " procs:"

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget v1, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seq("

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")}"

    .line 458
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateHasInternetPermission()V
    .registers 3

    .line 352
    iget v0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    const-string v1, "android.permission.INTERNET"

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    return-void
.end method
