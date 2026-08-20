.class public final Lcom/android/server/am/ProcessCachedOptimizerRecord;
.super Ljava/lang/Object;
.source "ProcessCachedOptimizerRecord.java"


# static fields
.field public static final IS_FROZEN:Ljava/lang/String; = "isFrozen"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mForceCompact:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mFreezeExempt:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mFreezeUnfreezeTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mFreezerOverride:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mFrozen:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mLastCompactAction:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mLastCompactTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mPendingCompact:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mPendingFreeze:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mReqCompactAction:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mShouldNotFreeze:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public setForceFreeze:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 211
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "lastCompactTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p3, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->print(J)V

    const-string p3, " lastCompactAction="

    .line 221
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "hasPendingCompaction="

    .line 223
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget-boolean p3, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "isFreezeExempt="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " isPendingFreeze="

    .line 226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " isFrozen="

    .line 227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getFreezeUnfreezeTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 171
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-wide v0
.end method

.method public getLastCompactAction()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 121
    iget p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    return p0
.end method

.method public getLastCompactTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 101
    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-wide v0
.end method

.method public getReqCompactAction()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 111
    iget p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactAction:I

    return p0
.end method

.method public hasFreezerOverride()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 161
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return p0
.end method

.method public hasPendingCompact()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 131
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return p0
.end method

.method public init(J)V
    .registers 3

    .line 215
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method public isForceCompact()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 141
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return p0
.end method

.method public isFreezeExempt()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 191
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return p0
.end method

.method public isFrozen()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 151
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return p0
.end method

.method public isPendingFreeze()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 201
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return p0
.end method

.method public setForceCompact(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 146
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    return-void
.end method

.method public setFreezeExempt(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 206
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return-void
.end method

.method public setFreezeUnfreezeTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 176
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method public setFreezerOverride(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 166
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return-void
.end method

.method public setFrozen(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 156
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return-void
.end method

.method public setHasPendingCompact(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 136
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return-void
.end method

.method public setLastCompactAction(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 126
    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    return-void
.end method

.method public setLastCompactTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 106
    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-void
.end method

.method public setPendingFreeze(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 196
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return-void
.end method

.method public setReqCompactAction(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 116
    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactAction:I

    return-void
.end method

.method public setShouldNotFreeze(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 186
    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return-void
.end method

.method public shouldNotFreeze()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 181
    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return p0
.end method
