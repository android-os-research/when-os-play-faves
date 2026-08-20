.class public Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogHandler"
.end annotation


# static fields
.field public static final MESSAGE_LOG_TRACE_ENTRY:I = 0x1

.field public static final MESSAGE_WRITE_FILE:I = 0x2


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;Landroid/os/Looper;)V
    .registers 3

    .line 2178
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 2179
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 2184
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x2

    if-eq v0, p1, :cond_a

    goto/16 :goto_147

    .line 2242
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmLock(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2243
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mwriteTraceToFileInternal(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V

    .line 2244
    monitor-exit v0

    goto/16 :goto_147

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw p0

    .line 2186
    :cond_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2188
    :try_start_20
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 2189
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 2190
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-wide v3, 0x20b00000002L

    .line 2192
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2194
    iget-wide v5, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 2195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 2198
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    .line 2199
    div-long/2addr v7, v11

    sub-long/2addr v9, v7

    .line 2201
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide v11, 0x10600000001L

    .line 2203
    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10900000002L

    .line 2204
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2206
    iget-wide v7, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 2208
    invoke-static {v7, v8}, Landroid/accessibilityservice/AccessibilityTrace;->getNamesOfLoggingTypes(J)Ljava/util/List;

    move-result-object v7

    .line 2210
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_78
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-wide v9, 0x20900000003L

    .line 2211
    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_78

    :cond_8d
    const-wide v7, 0x10900000006L

    .line 2213
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10900000004L

    .line 2214
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10900000005L

    .line 2215
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10900000007L

    .line 2216
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10900000008L

    .line 2217
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2219
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/StackTraceElement;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-static {p1, v2, v7}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mtoStackTraceString(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    const-wide v7, 0x10900000009L

    .line 2222
    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10b0000000aL

    .line 2223
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v7, 0x10b0000000bL

    .line 2225
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2226
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_ff} :catch_13f

    :try_start_ff
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2227
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmService(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V

    .line 2228
    monitor-exit p1
    :try_end_10d
    .catchall {:try_start_ff .. :try_end_10d} :catchall_139

    :try_start_10d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2229
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v7, 0x1090000000cL

    .line 2230
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p1, v5, v6}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mprintCpuStats(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2232
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2233
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmLock(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_12b} :catch_13f

    .line 2234
    :try_start_12b
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$fgetmBuffer(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/internal/util/TraceBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 2235
    monitor-exit p1

    goto :goto_147

    :catchall_136
    move-exception p0

    monitor-exit p1
    :try_end_138
    .catchall {:try_start_12b .. :try_end_138} :catchall_136

    :try_start_138
    throw p0
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_139} :catch_13f

    :catchall_139
    move-exception p0

    .line 2228
    :try_start_13a
    monitor-exit p1
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    :try_start_13b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13f} :catch_13f

    :catch_13f
    move-exception p0

    const-string p1, "AccessibilityTracing"

    const-string v0, "Exception while tracing state"

    .line 2237
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_147
    return-void
.end method
