.class public final Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;
.super Ljava/lang/Thread;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StatusMonitorThread"
.end annotation


# instance fields
.field public needToExit:Z

.field public final synthetic this$0:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;)V
    .registers 2

    .line 886
    iput-object p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->this$0:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 887
    iput-boolean p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->needToExit:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;-><init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    const-string v0, "StatusMonitorThread start"

    .line 890
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 891
    :goto_5
    iget-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->needToExit:Z

    if-nez v0, :cond_24

    .line 892
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$smwaitForStatusUpdate()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 893
    iget-boolean v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->needToExit:Z

    if-eqz v1, :cond_15

    goto :goto_24

    .line 897
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->this$0:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-static {v1, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->-$$Nest$mupdateSystemStatus(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_5

    :catch_1b
    move-exception p0

    const-string v0, "StatusMonitorThread crashed!"

    .line 900
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_24
    const-string p0, "StatusMonitorThread exited"

    .line 903
    invoke-static {p0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void
.end method
