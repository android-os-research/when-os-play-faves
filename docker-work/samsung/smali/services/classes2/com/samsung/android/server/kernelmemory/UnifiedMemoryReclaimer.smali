.class public final Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;,
        Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;,
        Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;,
        Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;,
        Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;,
        Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;,
        Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;
    }
.end annotation


# static fields
.field public static final DELAYED_ENABLE_RECLAIMERS_MS:I = 0x493e0

.field public static final DELAYED_RESET_CAMERA_LAUNCH_MS:I = 0x1388

.field public static final DISABLED:Z

.field public static final MEM_AVAIL_LOW_THRESHOLD_KB:I

.field public static final MODEL_UMR_ENABLED:Z

.field public static final MSG_ENABLE_RECLAIMERS:I = 0x1

.field public static final MSG_RESET_CAMERA_LAUNCH:I = 0x2

.field public static final PSI_CPU_THRESHOLD_MS:I

.field public static final PSI_MEM_THRESHOLD_MS:I

.field public static final TAG:Ljava/lang/String; = "UMR"

.field public static debug:Z

.field public static enabled:Z

.field public static mHandler:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

.field public static mHandlerThread:Lcom/android/server/ServiceThread;

.field public static mReclaimPolicyManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;

.field public static mReclaimerManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

.field public static mSystemStatusMonitor:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

.field public static shouldDelayEnableReclaimers:Z


# direct methods
.method public static synthetic $r8$lambda$JygCYx6tpCic87iE5hy2fXNXF1c(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->lambda$disableReclaimers$1(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LmKri5e9FL8OlhzR9GFtUpxPYxs(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->lambda$dumpInfo$2(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wbkzikwm1ASFsb_ZqnTG8D_L-NA(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->lambda$enableReclaimers$0(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMEM_AVAIL_LOW_THRESHOLD_KB()I
    .registers 1

    sget v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->MEM_AVAIL_LOW_THRESHOLD_KB:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPSI_CPU_THRESHOLD_MS()I
    .registers 1

    sget v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->PSI_CPU_THRESHOLD_MS:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPSI_MEM_THRESHOLD_MS()I
    .registers 1

    sget v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->PSI_MEM_THRESHOLD_MS:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smcloseCpuStatusMonitorNative()V
    .registers 0

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->closeCpuStatusMonitorNative()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcloseMemStatusMonitorNative()V
    .registers 0

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->closeMemStatusMonitorNative()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcreateStatusMonitorNative()I
    .registers 1

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->createStatusMonitorNative()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smdestroyStatusMonitorNative()V
    .registers 0

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->destroyStatusMonitorNative()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smopenCpuStatusMonitorNative(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->openCpuStatusMonitorNative(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smopenMemStatusMonitorNative(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->openMemStatusMonitorNative(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendMessage(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->sendMessage(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smwaitForStatusUpdate()I
    .registers 1

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->waitForStatusUpdate()I

    move-result v0

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.enabled"

    const-string v1, "false"

    .line 53
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 54
    sput-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->enabled:Z

    .line 56
    sput-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->debug:Z

    .line 57
    sput-boolean v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->shouldDelayEnableReclaimers:Z

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 60
    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mHandler:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    .line 62
    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    .line 63
    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    .line 64
    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    const/16 v0, 0xc8

    const-string/jumbo v1, "ro.sys.kernelmemory.umr.psi_cpu_threshold_ms"

    .line 68
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->PSI_CPU_THRESHOLD_MS:I

    const/16 v0, 0x64

    const-string/jumbo v1, "ro.sys.kernelmemory.umr.psi_mem_threshold_ms"

    .line 70
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->PSI_MEM_THRESHOLD_MS:I

    const/high16 v0, 0x200000

    const-string/jumbo v1, "ro.sys.kernelmemory.umr.mem_avail_low_threshold_kb"

    .line 72
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->MEM_AVAIL_LOW_THRESHOLD_KB:I

    .line 81
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->staticInitialize()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native closeCpuStatusMonitorNative()V
.end method

.method private static native closeMemStatusMonitorNative()V
.end method

.method private static native createStatusMonitorNative()I
.end method

.method public static destroy()V
    .registers 2

    .line 140
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_a

    const-string v0, "destroy: UnifiedMemoryReclaimer is disabled by config"

    .line 141
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_a
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->enabled:Z

    if-nez v0, :cond_14

    const-string v0, "init: UnifiedMemoryReclaimer is already disabled"

    .line 145
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    .line 148
    :cond_14
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->disableReclaimers()V

    .line 149
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    .line 150
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->stop()V

    .line 151
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->destroy()V

    const/4 v0, 0x0

    .line 152
    sput-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->enabled:Z

    const-string v0, "destroy: success"

    .line 153
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_38

    :catch_2f
    move-exception v0

    const-string v1, "deinitialize: failed by exception"

    .line 155
    invoke-static {v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    return-void
.end method

.method private static native destroyStatusMonitorNative()V
.end method

.method public static disableReclaimers()V
    .registers 2

    const-string v0, "disableReclaimers"

    .line 250
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->resetReclaimerControls()V

    .line 252
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimers()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string v0, "enabled"

    const-string v1, "1"

    const-string/jumbo v2, "true"

    const-string v3, "True"

    const-string v4, "TRUE"

    .line 269
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "0"

    const-string v3, "false"

    const-string v4, "False"

    const-string v5, "FALSE"

    .line 270
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 272
    :try_start_23
    sget-boolean v3, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v3, :cond_2d

    const-string p1, "disabled by system configuration"

    .line 273
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 276
    :cond_2d
    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_137

    const-string p1, "configurations:"

    .line 277
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- enabled: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- debug: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->debug:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- reclaimer_log: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->reclaimerLogSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- psi_cpu_threshold_ms:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiCpuThresholdMS()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- psi_cpu_window_ms:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiCpuWindowMS()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- psi_mem_threshold_ms:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiMemThresholdMS()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- psi_mem_window_ms:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiMemWindowMS()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- mem_avail_low_threshold_kb:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getMemAvailLowThresholdKB()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimers()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_126

    const-string/jumbo p1, "reclaimers: controlStatus, mode, efficiency"

    .line 289
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    :cond_126
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimers()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_137
    const-string v3, "help"

    .line 298
    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    const-string p1, "available commands:"

    .line 299
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- help: show this prompt"

    .line 300
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set enabled [true|false]: en/disable ump"

    .line 301
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set debug [true|false]: en/disable debug"

    .line 302
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set psi_cpu_threshold_ms VALUE"

    .line 303
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set psi_cpu_window_ms VALUE"

    .line 304
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set psi_mem_threshold_ms VALUE"

    .line 305
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set psi_mem_window_ms VALUE"

    .line 306
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set reclaimer RECLAIMER_NAME controlStatus [enabled|disabled]"

    .line 307
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set reclaimer RECLAIMER_NAME efficiency VALUE"

    .line 308
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_174
    const-string/jumbo p0, "set"

    .line 311
    aget-object v3, p1, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e4

    .line 312
    array-length p0, p1

    const/4 v3, 0x3

    if-le p0, v3, :cond_2e4

    const/4 p0, 0x2

    .line 313
    aget-object v5, p1, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a4

    .line 314
    aget-object p0, p1, v3

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_198

    .line 315
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->init()V

    goto :goto_1a3

    .line 317
    :cond_198
    aget-object p0, p1, v3

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a3

    .line 318
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->destroy()V

    :cond_1a3
    :goto_1a3
    return-void

    :cond_1a4
    const-string v5, "debug"

    .line 322
    aget-object v6, p1, p0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1c5

    .line 323
    aget-object p0, p1, v3

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ba

    .line 324
    sput-boolean v4, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->debug:Z

    goto :goto_1c4

    .line 326
    :cond_1ba
    aget-object p0, p1, v3

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c4

    .line 327
    sput-boolean v6, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->debug:Z

    :cond_1c4
    :goto_1c4
    return-void

    :cond_1c5
    const-string/jumbo v1, "psi_cpu_threshold_ms"

    .line 331
    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ec

    .line 332
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    .line 333
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setPsiCpuThresholdMS(I)V

    .line 334
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    return-void

    :cond_1ec
    const-string/jumbo v1, "psi_cpu_window_ms"

    .line 337
    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_213

    .line 338
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    .line 339
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setPsiCpuWindowMS(I)V

    .line 340
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    return-void

    :cond_213
    const-string/jumbo v1, "psi_mem_threshold_ms"

    .line 343
    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23a

    .line 344
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    .line 345
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setPsiMemThresholdMS(I)V

    .line 346
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    return-void

    :cond_23a
    const-string/jumbo v1, "psi_mem_window_ms"

    .line 349
    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_261

    .line 350
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    .line 351
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setPsiMemWindowMS(I)V

    .line 352
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    return-void

    :cond_261
    const-string v1, "mem_avail_low_threshold_kb"

    .line 355
    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_279

    .line 356
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setMemAvailLowThresholdKB(I)V

    return-void

    :cond_279
    const-string/jumbo v1, "reclaimer"

    .line 359
    aget-object p0, p1, p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e4

    .line 360
    array-length p0, p1

    const/4 v1, 0x6

    if-lt p0, v1, :cond_2e4

    .line 361
    aget-object p0, p1, v3

    .line 362
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimer(Ljava/lang/String;)Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;

    move-result-object p0

    if-nez p0, :cond_295

    return-void

    :cond_295
    const-string v1, "controlStatus"

    const/4 v2, 0x4

    .line 365
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_2c1

    .line 366
    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 367
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->resetReclaimerControls()V

    .line 368
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->setControlStatus(I)V

    goto :goto_2c0

    :cond_2b0
    const-string v0, "disabled"

    .line 370
    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c0

    .line 371
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->resetReclaimerControls()V

    .line 372
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->setControlStatus(I)V

    :cond_2c0
    :goto_2c0
    return-void

    :cond_2c1
    const-string v0, "efficiency"

    .line 376
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e4

    .line 377
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->setEfficiency(I)V
    :try_end_2d4
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d4} :catch_2d5

    goto :goto_2e4

    :catch_2d5
    move-exception p0

    .line 384
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2e4

    const-string p1, "failed to dumpInfo by exception"

    .line 385
    invoke-static {p1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2e4
    :goto_2e4
    return-void
.end method

.method public static enableReclaimers()V
    .registers 2

    const-string v0, "enableReclaimers"

    .line 242
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->resetReclaimerControls()V

    .line 244
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimers()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static getReclaimPolicyManager()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;
    .registers 1

    .line 212
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    return-object v0
.end method

.method public static getReclaimerManager()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;
    .registers 1

    .line 208
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    return-object v0
.end method

.method public static getReclaimerMode(Ljava/lang/String;)I
    .registers 3

    .line 231
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 234
    :cond_6
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimer(Ljava/lang/String;)Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;

    move-result-object p0

    if-nez p0, :cond_d

    return v1

    .line 238
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->getMode()I

    move-result p0

    return p0
.end method

.method public static getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;
    .registers 1

    .line 216
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    return-object v0
.end method

.method public static init()V
    .registers 2

    .line 102
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_20

    const-string v0, "init: UnifiedMemoryReclaimer is disabled by config"

    .line 103
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: CORERUNE_UMR_ENABLED = true, MODEL_UMR_ENABLED = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_20
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->enabled:Z

    if-eqz v0, :cond_2a

    const-string v0, "init: UnifiedMemoryReclaimer is already enabled"

    .line 108
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    :cond_2a
    const-string v0, "init: start init"

    .line 111
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    if-nez v0, :cond_3b

    .line 114
    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;-><init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager-IA;)V

    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    .line 116
    :cond_3b
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    if-nez v0, :cond_46

    .line 117
    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-direct {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;-><init>()V

    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    .line 120
    :cond_46
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->init()V

    .line 121
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->start()V

    .line 122
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    .line 124
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->shouldDelayEnableReclaimers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_61

    const v0, 0x493e0

    .line 125
    invoke-static {v1, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->sendMessage(II)V

    goto :goto_65

    :cond_61
    const/4 v0, 0x0

    .line 127
    invoke-static {v1, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->sendMessage(II)V

    .line 130
    :goto_65
    sput-boolean v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->enabled:Z

    const-string v0, "init: success"

    .line 131
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_76

    :catch_6d
    move-exception v0

    const-string v1, "init: failed by exception"

    .line 133
    invoke-static {v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_76
    return-void
.end method

.method public static isDebugEnabled()Z
    .registers 1

    .line 161
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->debug:Z

    return v0
.end method

.method public static isInAppLaunch()Z
    .registers 2

    .line 188
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 190
    :cond_6
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 192
    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getAppLaunch()Z

    move-result v0

    return v0

    :cond_11
    return v1
.end method

.method public static isInCameraLaunch()Z
    .registers 2

    .line 198
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 200
    :cond_6
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 202
    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getCameraLaunch()Z

    move-result v0

    return v0

    :cond_11
    return v1
.end method

.method public static synthetic lambda$disableReclaimers$1(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    const/4 p0, 0x0

    .line 253
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->setControlStatus(I)V

    return-void
.end method

.method public static synthetic lambda$dumpInfo$2(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 4

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$enableReclaimers$0(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    const/4 p0, 0x1

    .line 245
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->setControlStatus(I)V

    return-void
.end method

.method public static notifyAppLaunchFinished(Ljava/lang/String;)V
    .registers 4

    .line 178
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_5

    return-void

    .line 180
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E|app_launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 181
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v2, "launcher"

    .line 182
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 183
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setAppLaunch(Z)V

    :cond_2b
    return-void
.end method

.method public static notifyAppLaunchStarted(Ljava/lang/String;)V
    .registers 4

    .line 165
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_5

    return-void

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B|app_launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 168
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_37

    const-string v1, "launcher"

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setAppLaunch(Z)V

    const-string v2, "com.sec.android.app.camera"

    .line 171
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 172
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setCameraLaunch(Z)V

    :cond_37
    return-void
.end method

.method private static native openCpuStatusMonitorNative(II)I
.end method

.method private static native openMemStatusMonitorNative(II)I
.end method

.method public static registerReclaimer(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    .line 220
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_5

    return-void

    .line 223
    :cond_5
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    if-nez v0, :cond_10

    const-string/jumbo p0, "registerReclaimer: ReclaimerManager not prepared yet"

    .line 224
    invoke-static {p0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_10
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->registerReclaimer(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static resetCameraLaunch()V
    .registers 2

    .line 263
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setCameraLaunch(Z)V

    :cond_8
    return-void
.end method

.method public static resetReclaimerControls()V
    .registers 2

    const/4 v0, 0x0

    .line 258
    sput-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->shouldDelayEnableReclaimers:Z

    .line 259
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mHandler:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static sendMessage(II)V
    .registers 5

    .line 392
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mHandler:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    if-lez p1, :cond_f

    .line 394
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mHandler:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14

    .line 396
    :cond_f
    sget-object p1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mHandler:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_14
    return-void
.end method

.method public static staticInitialize()V
    .registers 4

    .line 85
    sget-boolean v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "staticInitialize: UnifiedMemoryReclaimer is disabled by config"

    .line 86
    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    .line 89
    :cond_b
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    if-nez v0, :cond_17

    .line 90
    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;-><init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager-IA;)V

    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    .line 94
    :cond_17
    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    sget-object v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->mHandler:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    return-void
.end method

.method private static native waitForStatusUpdate()I
.end method
