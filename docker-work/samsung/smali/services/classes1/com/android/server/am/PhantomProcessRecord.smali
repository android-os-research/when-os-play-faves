.class public final Lcom/android/server/am/PhantomProcessRecord;
.super Ljava/lang/Object;
.source "PhantomProcessRecord.java"


# static fields
.field public static final LONG_FORMAT:[I

.field public static final LONG_OUT:[J

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public mAdj:I

.field public mCurrentCputime:J

.field public final mKillHandler:Landroid/os/Handler;

.field public mKilled:Z

.field public final mKnownSince:J

.field public mLastCputime:J

.field public final mLock:Ljava/lang/Object;

.field public final mOnKillListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPid:I

.field public final mPidFd:Ljava/io/FileDescriptor;

.field public final mPpid:I

.field public mProcKillTimer:Ljava/lang/Runnable;

.field public final mProcessName:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mStringName:Ljava/lang/String;

.field public final mUid:I

.field public mUpdateSeq:I

.field public mZombie:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 50
    sput-object v1, Lcom/android/server/am/PhantomProcessRecord;->LONG_OUT:[J

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x200a

    aput v2, v0, v1

    .line 51
    sput-object v0, Lcom/android/server/am/PhantomProcessRecord;->LONG_FORMAT:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/android/server/am/PhantomProcessRecord$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PhantomProcessRecord$1;-><init>(Lcom/android/server/am/PhantomProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    .line 77
    iput p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 78
    iput p3, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 79
    iput p4, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    const/16 p2, -0x3e8

    .line 81
    iput p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    .line 83
    iput-object p5, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 84
    iget-object p2, p5, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object p2, p2, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mLock:Ljava/lang/Object;

    .line 85
    iput-object p6, p0, Lcom/android/server/am/PhantomProcessRecord;->mOnKillListener:Ljava/util/function/Consumer;

    .line 86
    sget-object p2, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    iput-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Landroid/os/Handler;

    .line 87
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result p2

    if-eqz p2, :cond_74

    .line 88
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    .line 90
    :try_start_37
    invoke-static {p3, p1}, Landroid/os/Process;->openPidFd(II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_4b
    .catchall {:try_start_37 .. :try_end_3d} :catchall_49

    if-eqz p1, :cond_43

    .line 101
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_77

    .line 92
    :cond_43
    :try_start_43
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_49} :catch_4b
    .catchall {:try_start_43 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p0

    goto :goto_70

    :catch_4b
    move-exception p0

    :try_start_4c
    const-string p1, "ActivityManager"

    .line 96
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unable to open process "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", it might be gone"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    throw p1
    :try_end_70
    .catchall {:try_start_4c .. :try_end_70} :catchall_49

    .line 101
    :goto_70
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 102
    throw p0

    :cond_74
    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    :goto_77
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "user #"

    .line 209
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " uid="

    .line 211
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " pid="

    .line 213
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " ppid="

    .line 215
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " knownSince="

    .line 217
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    iget-wide v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " killed="

    .line 219
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget-boolean v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "lastCpuTime="

    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget-wide v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 224
    iget-wide v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_6b

    const-string p2, " timeUsed="

    .line 225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    iget-wide v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget-wide v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_6b
    const-string p2, " oom adj="

    .line 228
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " seq="

    .line 230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget p0, p0, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public equals(Ljava/lang/String;II)Z
    .registers 5

    .line 235
    iget v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    if-ne v0, p2, :cond_12

    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    if-ne p2, p3, :cond_12

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public killLocked(Ljava/lang/String;Z)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    if-nez v0, :cond_97

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "kill"

    .line 111
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p2, :cond_16

    .line 112
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne p2, v2, :cond_3c

    .line 113
    :cond_16
    iget-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Killing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    const-string v4, "ActivityManager"

    .line 113
    invoke-virtual {p2, v4, v2, v3}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    :cond_3c
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    const/4 v2, 0x1

    if-lez p2, :cond_92

    const/16 p2, 0x7547

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 117
    iget v4, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    aput-object p1, v3, v4

    .line 117
    invoke-static {p2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 119
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result p1

    if-nez p1, :cond_79

    .line 120
    invoke-virtual {p0, v5}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    goto :goto_86

    .line 124
    :cond_79
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {p1, p2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 127
    :goto_86
    iget p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-static {p1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 128
    iget p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-static {p1, p2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 130
    :cond_92
    iput-boolean v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    .line 131
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_97
    return-void
.end method

.method public onProcDied(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Process "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " died"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_21
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mOnKillListener:Ljava/util/function/Consumer;

    if-eqz p1, :cond_2f

    .line 165
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 174
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PhantomProcessRecord {"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_47

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_83

    :cond_47
    const/16 v1, 0x75

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-lt v1, v2, :cond_68

    const/16 v2, 0x61

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit16 v2, v1, -0x2710

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_68
    const/16 v2, 0x73

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_70
    const v2, 0x182b8

    if-lt v1, v2, :cond_83

    const v3, 0x1869f

    if-gt v1, v3, :cond_83

    const/16 v3, 0x69

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v2

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_83
    :goto_83
    const/16 v1, 0x7d

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public updateAdjLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/oom_score_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/PhantomProcessRecord;->LONG_FORMAT:[I

    sget-object v2, Lcom/android/server/am/PhantomProcessRecord;->LONG_OUT:[J

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    .line 154
    aget-wide v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    :cond_29
    return-void
.end method
