.class public Lcom/android/server/am/AppProfiler$CpuBinder$1;
.super Ljava/lang/Object;
.source "AppProfiler.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler$CpuBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/AppProfiler$CpuBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler$CpuBinder;)V
    .registers 2

    .line 2206
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 7

    .line 2210
    iget-object p3, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p3, p3, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p3}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v0, "cpuinfo"

    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p3

    if-nez p3, :cond_13

    return-void

    .line 2213
    :cond_13
    iget-object p3, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p3, p3, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p3}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object p3

    monitor-enter p3

    if-eqz p4, :cond_2b

    .line 2215
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProto(Ljava/io/FileDescriptor;)V

    .line 2216
    monitor-exit p3

    return-void

    .line 2218
    :cond_2b
    iget-object p1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p1}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2219
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object p0

    .line 2220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2219
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2221
    monitor-exit p3

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit p3
    :try_end_51
    .catchall {:try_start_1e .. :try_end_51} :catchall_4f

    throw p0
.end method
