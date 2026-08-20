.class public Lcom/android/server/wm/WindowTracing;
.super Ljava/lang/Object;
.source "WindowTracing.java"


# static fields
.field public static final BUFFER_CAPACITY_ALL:I = 0x1400000

.field public static final BUFFER_CAPACITY_CRITICAL:I = 0x500000

.field public static final BUFFER_CAPACITY_TRIM:I = 0xa00000

.field public static final MAGIC_NUMBER_VALUE:J = 0x45434152544e4957L

.field public static final TAG:Ljava/lang/String; = "WindowTracing"

.field public static final TRACE_FILENAME:Ljava/lang/String; = "/data/misc/wmtrace/wm_trace.winscope"

.field public static final WINSCOPE_EXT:Ljava/lang/String; = ".winscope"


# instance fields
.field public final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mEnabled:Z

.field public final mEnabledLock:Ljava/lang/Object;

.field public volatile mEnabledLockFree:Z

.field public final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mLogLevel:I

.field public mLogOnFrame:Z

.field public mScheduled:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTraceFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$lwp39UNT2iyahoxYytHt93gf2j8(Lcom/android/server/wm/WindowTracing;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->lambda$new$0(J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;I)V
    .registers 11

    .line 86
    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowTracing;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V
    .registers 8

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowTracing;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 91
    iput-object p3, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    .line 92
    iput-object p2, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    iput-object p4, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 95
    new-instance p1, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {p1, p5}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    return-void
.end method

.method public static createDefaultAndStartLooper(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)Lcom/android/server/wm/WindowTracing;
    .registers 5

    .line 80
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/wm_trace.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v1, Lcom/android/server/wm/WindowTracing;

    const/high16 v2, 0xa00000

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/android/server/wm/WindowTracing;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;I)V

    return-object v1
.end method

.method private synthetic lambda$new$0(J)V
    .registers 3

    const-string/jumbo p1, "onFrame"

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .registers 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "Enabled"

    goto :goto_15

    :cond_13
    const-string v1, "Disabled"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLog level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->getStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 193
    iget-boolean p0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    return p0
.end method

.method public final log(Ljava/lang/String;)V
    .registers 11

    const-string/jumbo v0, "traceStateLocked"

    const-wide/16 v1, 0x20

    .line 311
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 313
    :try_start_8
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v3, 0x20b00000002L

    .line 314
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10600000001L

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10900000002L

    .line 316
    invoke-virtual {v0, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x10b00000003L

    .line 318
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 319
    iget-object p1, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_68
    .catchall {:try_start_8 .. :try_end_36} :catchall_66

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v7, "dumpDebugLocked"

    .line 320
    invoke-static {v1, v2, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_60

    .line 322
    :try_start_3e
    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    invoke-virtual {v7, v0, v8}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_5b

    .line 324
    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 326
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_60

    :try_start_49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 327
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 328
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 329
    iget-object p1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 330
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5a} :catch_68
    .catchall {:try_start_49 .. :try_end_5a} :catchall_66

    goto :goto_70

    :catchall_5b
    move-exception p0

    .line 324
    :try_start_5c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 325
    throw p0

    :catchall_60
    move-exception p0

    .line 326
    monitor-exit p1
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_60

    :try_start_62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_68
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p0

    goto :goto_74

    :catch_68
    move-exception p0

    :try_start_69
    const-string p1, "WindowTracing"

    const-string v0, "Exception while tracing state"

    .line 332
    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_66

    .line 334
    :goto_70
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_74
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 335
    throw p0
.end method

.method public final logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    const-string p0, "WindowTracing"

    .line 339
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    .line 341
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_d
    return-void
.end method

.method public logState(Ljava/lang/String;)V
    .registers 3

    .line 282
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 286
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    if-eqz v0, :cond_f

    .line 287
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->schedule()V

    goto :goto_12

    .line 289
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public onShellCommand(Landroid/os/ShellCommand;)I
    .registers 9

    .line 197
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_154

    :goto_16
    move v2, v4

    goto/16 :goto_76

    :sswitch_19
    const-string/jumbo v2, "transaction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_16

    :cond_23
    const/4 v2, 0x7

    goto :goto_76

    :sswitch_25
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_16

    :cond_2f
    const/4 v2, 0x6

    goto :goto_76

    :sswitch_31
    const-string v2, "level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_16

    :cond_3a
    const/4 v2, 0x5

    goto :goto_76

    :sswitch_3c
    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_16

    :cond_45
    const/4 v2, 0x4

    goto :goto_76

    :sswitch_47
    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_16

    :cond_51
    const/4 v2, 0x3

    goto :goto_76

    :sswitch_53
    const-string/jumbo v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_16

    :cond_5d
    move v2, v3

    goto :goto_76

    :sswitch_5f
    const-string/jumbo v2, "save-for-bugreport"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_16

    :cond_69
    move v2, v5

    goto :goto_76

    :sswitch_6b
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    goto :goto_16

    :cond_75
    move v2, v6

    :goto_76
    packed-switch v2, :pswitch_data_176

    .line 247
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown command: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Window manager trace options:"

    .line 248
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  start: Start logging"

    .line 249
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  stop: Stop logging"

    .line 250
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  save-for-bugreport: Save logging data to file if it\'s running."

    .line 251
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  frame: Log trace once per frame"

    .line 252
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  transaction: Log each transaction"

    .line 253
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  size: Set the maximum log size (in KB)"

    .line 254
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  status: Print trace status"

    .line 255
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  level [lvl]: Set the log level between"

    .line 256
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    lvl may be one of:"

    .line 257
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      critical: Only visible windows with reduced information"

    .line 258
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      trim: All windows with reduced"

    .line 259
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      all: All window and information"

    .line 260
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 217
    :pswitch_cf
    invoke-virtual {p0, v6, v0}, Lcom/android/server/wm/WindowTracing;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 218
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v6

    .line 201
    :pswitch_d8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    return v6

    .line 221
    :pswitch_dc
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_18a

    goto :goto_110

    :sswitch_ef
    const-string v1, "critical"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f8

    goto :goto_110

    :cond_f8
    move v4, v3

    goto :goto_110

    :sswitch_fa
    const-string/jumbo v1, "trim"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_104

    goto :goto_110

    :cond_104
    move v4, v5

    goto :goto_110

    :sswitch_106
    const-string v1, "all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10f

    goto :goto_110

    :cond_10f
    move v4, v6

    :goto_110
    packed-switch v4, :pswitch_data_198

    .line 236
    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_122

    .line 232
    :pswitch_117
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_122

    .line 228
    :pswitch_11b
    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_122

    .line 224
    :pswitch_11f
    invoke-virtual {p0, v6, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 240
    :goto_122
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v6

    .line 213
    :pswitch_128
    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 214
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v6

    .line 204
    :pswitch_131
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    return v6

    .line 243
    :pswitch_135
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 244
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v6

    .line 207
    :pswitch_148
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->saveForBugreport(Ljava/io/PrintWriter;)V

    return v6

    .line 210
    :pswitch_14c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v6

    :sswitch_data_154
    .sparse-switch
        -0x3532300e -> :sswitch_6b
        -0x174ab7ac -> :sswitch_5f
        0x35e001 -> :sswitch_53
        0x360802 -> :sswitch_47
        0x5d2a96d -> :sswitch_3c
        0x6219b84 -> :sswitch_31
        0x68ac462 -> :sswitch_25
        0x7fa0d2de -> :sswitch_19
    .end sparse-switch

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_14c
        :pswitch_148
        :pswitch_135
        :pswitch_131
        :pswitch_128
        :pswitch_dc
        :pswitch_d8
        :pswitch_cf
    .end packed-switch

    :sswitch_data_18a
    .sparse-switch
        0x179a1 -> :sswitch_106
        0x367422 -> :sswitch_fa
        0x745b779f -> :sswitch_ef
    .end sparse-switch

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_11f
        :pswitch_11b
        :pswitch_117
    .end packed-switch
.end method

.method public saveForBugreport(Ljava/io/PrintWriter;)V
    .registers 6

    .line 141
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    const-string v0, "Error: Tracing is not supported on user builds."

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    if-nez v1, :cond_13

    .line 147
    monitor-exit v0

    return-void

    :cond_13
    const/4 v1, 0x0

    .line 149
    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start tracing to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 156
    iput-boolean v2, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 157
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 158
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_d .. :try_end_88} :catchall_86

    throw p0
.end method

.method public final schedule()V
    .registers 2

    .line 297
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final setBufferCapacity(ILjava/io/PrintWriter;)V
    .registers 5

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing buffer capacity to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    return-void
.end method

.method public final setLogFrequency(ZLjava/io/PrintWriter;)V
    .registers 5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log frequency to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "frame"

    goto :goto_12

    :cond_f
    const-string/jumbo v1, "transaction"

    .line 183
    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 184
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    return-void
.end method

.method public final setLogLevel(ILjava/io/PrintWriter;)V
    .registers 5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log level to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 163
    iput p1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    goto :goto_30

    :cond_1f
    const/high16 p1, 0x500000

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    goto :goto_30

    :cond_25
    const/high16 p1, 0xa00000

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    goto :goto_30

    :cond_2b
    const/high16 p1, 0x1400000

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    :goto_30
    return-void
.end method

.method public startTrace(Ljava/io/PrintWriter;)V
    .registers 5

    .line 100
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    const-string v0, "Error: Tracing is not supported on user builds."

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_d
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 109
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_41

    const-string/jumbo p1, "trace.enable"

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    return-void

    :catchall_41
    move-exception p0

    .line 109
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public stopTrace(Ljava/io/PrintWriter;)V
    .registers 5

    .line 118
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    const-string v0, "Error: Tracing is not supported on user builds."

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 124
    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 132
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_55

    .line 133
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    return-void

    :catchall_55
    move-exception p0

    .line 132
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public final writeTraceToFileLocked()V
    .registers 8

    const-wide/16 v0, 0x20

    :try_start_2
    const-string/jumbo v2, "writeTraceToFileLocked"

    .line 352
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 353
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v3, 0x10600000001L

    const-wide v5, 0x45434152544e4957L    # 4.655612620390422E25

    .line 354
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 355
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v3, p0, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_21} :catch_24
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    goto :goto_2c

    :catchall_22
    move-exception p0

    goto :goto_30

    :catch_24
    move-exception p0

    :try_start_25
    const-string v2, "WindowTracing"

    const-string v3, "Unable to write buffer to file"

    .line 357
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_22

    .line 359
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_30
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 360
    throw p0
.end method
