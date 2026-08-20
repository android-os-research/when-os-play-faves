.class public final Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessibilityTracing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
    }
.end annotation


# static fields
.field public static final BUFFER_CAPACITY:I = 0xc00000

.field public static final CPU_STATS_COUNT:I = 0x5

.field public static final MAGIC_NUMBER_VALUE:J = 0x4341525459313141L

.field public static final TAG:Ljava/lang/String; = "AccessibilityTracing"

.field public static final TRACE_FILENAME:Ljava/lang/String; = "/data/misc/a11ytrace/a11y_trace.winscope"

.field public static sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# instance fields
.field public final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field public volatile mEnabled:Z

.field public final mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTraceFile:Ljava/io/File;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBuffer(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/internal/util/TraceBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mprintCpuStats(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;J)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->printCpuStats(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtoStackTraceString(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->toStackTraceString([Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mwriteTraceToFileInternal(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->writeTraceToFileInternal()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 1973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1966
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    .line 1974
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1975
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/misc/a11ytrace/a11y_trace.winscope"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    .line 1976
    new-instance p1, Lcom/android/internal/util/TraceBuffer;

    const/high16 v0, 0xc00000

    invoke-direct {p1, v0}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 1977
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "AccessibilityTracing"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1979
    new-instance v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;-><init>(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    return-void
.end method

.method public static getInstance(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
    .registers 3

    .line 1950
    invoke-static {}, Lcom/android/server/wm/AccessibilityController;->-$$Nest$sfgetSTATIC_LOCK()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1951
    :try_start_5
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    if-nez v1, :cond_10

    .line 1952
    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sput-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 1954
    :cond_10
    sget-object p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 1955
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method


# virtual methods
.method public isEnabled()Z
    .registers 1

    .line 2015
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    return p0
.end method

.method public final log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2152
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2153
    iput-wide p8, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 2154
    iput-wide p2, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 2155
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2156
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2157
    iput-object p11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2158
    iput-object p12, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2159
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 2160
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 2161
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 2163
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p6, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2164
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public logState(Ljava/lang/String;J)V
    .registers 5

    .line 2022
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, ""

    .line 2025
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public logState(Ljava/lang/String;JLjava/lang/String;)V
    .registers 12

    .line 2032
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, ""

    .line 2035
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[B)V

    return-void
.end method

.method public logState(Ljava/lang/String;JLjava/lang/String;[B)V
    .registers 15

    .line 2042
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 2045
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    new-instance v8, Ljava/util/HashSet;

    const-string v0, "logState"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2046
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    .line 2045
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BILjava/util/Set;)V

    return-void
.end method

.method public logState(Ljava/lang/String;JLjava/lang/String;[BILjava/util/Set;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 2054
    iget-boolean v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v1, :cond_6

    return-void

    .line 2057
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const-string v1, "logState"

    move-object/from16 v8, p7

    .line 2058
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 2059
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    return-void
.end method

.method public logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JIJLjava/util/Set;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "JIJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 2084
    iget-boolean v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v1, :cond_6

    return-void

    .line 2088
    :cond_6
    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v12, p13

    .line 2087
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "[BI[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 2068
    iget-boolean v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v1, :cond_6

    return-void

    .line 2072
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2073
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2074
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v12, p8

    .line 2071
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public final printCpuStats(J)Ljava/lang/String;
    .registers 4

    .line 2268
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManagerInternal;->getAppProfileStatsForDebugging(JI)Landroid/util/Pair;

    move-result-object p0

    .line 2271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startTrace()V
    .registers 3

    .line 1986
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_c

    const-string p0, "AccessibilityTracing"

    const-string v0, "Error: Tracing is not supported on user builds."

    .line 1987
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1990
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1991
    :try_start_10
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 1992
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 1993
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public stopTrace()V
    .registers 3

    .line 2000
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_c

    const-string p0, "AccessibilityTracing"

    const-string v0, "Error: Tracing is not supported on user builds."

    .line 2001
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2004
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2005
    :try_start_10
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 2006
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-eqz v1, :cond_1f

    const-string p0, "AccessibilityTracing"

    const-string v1, "Error: tracing enabled while waiting for flush."

    .line 2007
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    monitor-exit v0

    return-void

    .line 2010
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->writeTraceToFile()V

    .line 2011
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final toStackTraceString([Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_5

    const-string p0, ""

    return-object p0

    .line 2098
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2103
    :goto_c
    array-length v2, p1

    if-ge v0, v2, :cond_31

    .line 2104
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2105
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v1, v0

    :cond_2c
    if-gez v1, :cond_31

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2119
    :cond_31
    array-length v2, p1

    if-ge v0, v2, :cond_5a

    :goto_34
    add-int/lit8 v0, v0, 0x1

    .line 2122
    array-length v2, p1

    if-ge v0, v2, :cond_5a

    .line 2123
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2124
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move v1, v0

    :cond_56
    if-eq v1, v0, :cond_59

    goto :goto_5a

    :cond_59
    goto :goto_34

    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    .line 2139
    array-length p2, p1

    if-ge v1, p2, :cond_6e

    .line 2140
    aget-object p2, p1, v1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 2143
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTraceToFile()V
    .registers 2

    .line 2171
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final writeTraceToFileInternal()V
    .registers 6

    .line 2256
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10600000001L

    const-wide v3, 0x4341525459313141L    # 9.75119366241549E15

    .line 2257
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2258
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, p0, v0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception p0

    const-string v0, "AccessibilityTracing"

    const-string v1, "Unable to write buffer to file"

    .line 2260
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method
