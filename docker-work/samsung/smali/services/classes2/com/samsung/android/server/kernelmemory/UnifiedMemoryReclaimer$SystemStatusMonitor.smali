.class public final Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemStatusMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;
    }
.end annotation


# static fields
.field public static final NUM_RES_TYPES:I = 0x2

.field public static final RES_TYPE_CPU:I = 0x0

.field public static final RES_TYPE_MEM:I = 0x1


# instance fields
.field public appLaunch:Z

.field public cameraLaunch:Z

.field public memAvailLowThresholdKB:I

.field public memInfo:Lcom/android/internal/util/MemInfoReader;

.field public resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

.field public statusMonitorThread:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateSystemStatus(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->updateSystemStatus(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$sfgetMEM_AVAIL_LOW_THRESHOLD_KB()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memAvailLowThresholdKB:I

    const/4 v0, 0x0

    .line 829
    iput-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->appLaunch:Z

    .line 830
    iput-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->cameraLaunch:Z

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    .line 835
    iput-object v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    .line 836
    new-instance v2, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$sfgetPSI_CPU_THRESHOLD_MS()I

    move-result v3

    const-string v4, "cpu"

    const/16 v5, 0x3e8

    invoke-direct {v2, v4, v3, v5}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v0

    .line 837
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$sfgetPSI_MEM_THRESHOLD_MS()I

    move-result v1

    const-string v2, "mem"

    invoke-direct {v0, v2, v1, v5}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x1

    aput-object v0, p0, v1

    return-void
.end method


# virtual methods
.method public applyNewSystemStatus()V
    .registers 4

    .line 917
    iget-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->isBusy()Z

    move-result v0

    .line 918
    iget-object v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->isBusy()Z

    move-result v1

    .line 919
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memAvailableLow()Z

    move-result p0

    .line 920
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getReclaimPolicyManager()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->updateReclaimPolicy(ZZZ)V

    return-void
.end method

.method public declared-synchronized getAppLaunch()Z
    .registers 2

    monitor-enter p0

    .line 871
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->appLaunch:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCameraLaunch()Z
    .registers 2

    monitor-enter p0

    .line 883
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->cameraLaunch:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMemAvailLowThresholdKB()I
    .registers 1

    .line 956
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memAvailLowThresholdKB:I

    return p0
.end method

.method public getPsiCpuThresholdMS()I
    .registers 2

    .line 924
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->getPsiThresholdMS()I

    move-result p0

    return p0
.end method

.method public getPsiCpuWindowMS()I
    .registers 2

    .line 940
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->getPsiWindowMS()I

    move-result p0

    return p0
.end method

.method public getPsiMemThresholdMS()I
    .registers 2

    .line 932
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->getPsiThresholdMS()I

    move-result p0

    return p0
.end method

.method public getPsiMemWindowMS()I
    .registers 2

    .line 948
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->getPsiWindowMS()I

    move-result p0

    return p0
.end method

.method public memAvailableLow()Z
    .registers 5

    .line 965
    iget-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 966
    iget-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memAvailLowThresholdKB:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public declared-synchronized setAppLaunch(Z)V
    .registers 2

    monitor-enter p0

    .line 864
    :try_start_1
    iput-boolean p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->appLaunch:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 868
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCameraLaunch(Z)V
    .registers 4

    monitor-enter p0

    .line 875
    :try_start_1
    iput-boolean p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->cameraLaunch:Z

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inCameraLaunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    const/4 p1, 0x2

    const/16 v0, 0x1388

    .line 878
    invoke-static {p1, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$smsendMessage(II)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 880
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMemAvailLowThresholdKB(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 960
    iget v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memAvailLowThresholdKB:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SystemStatusMonitor: set memAvailLowThresholdKB=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 961
    iput p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memAvailLowThresholdKB:I

    return-void
.end method

.method public setPsiCpuThresholdMS(I)V
    .registers 3

    .line 928
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->setPsiThresholdMS(I)V

    return-void
.end method

.method public setPsiCpuWindowMS(I)V
    .registers 3

    .line 944
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->setPsiWindowMS(I)V

    return-void
.end method

.method public setPsiMemThresholdMS(I)V
    .registers 3

    .line 936
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->setPsiThresholdMS(I)V

    return-void
.end method

.method public setPsiMemWindowMS(I)V
    .registers 3

    .line 952
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->setPsiWindowMS(I)V

    return-void
.end method

.method public start()V
    .registers 3

    .line 841
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$smcreateStatusMonitorNative()I

    .line 842
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiCpuThresholdMS()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiCpuWindowMS()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$smopenCpuStatusMonitorNative(II)I

    .line 843
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiMemThresholdMS()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiMemWindowMS()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$smopenMemStatusMonitorNative(II)I

    .line 845
    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;-><init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->statusMonitorThread:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;

    .line 846
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 848
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memInfo:Lcom/android/internal/util/MemInfoReader;

    .line 849
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$sfgetMEM_AVAIL_LOW_THRESHOLD_KB()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->setMemAvailLowThresholdKB(I)V

    const-string p0, "SystemStatusMonitor start"

    .line 850
    invoke-static {p0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 854
    iget-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->statusMonitorThread:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor$StatusMonitorThread;->needToExit:Z

    .line 855
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$smcloseCpuStatusMonitorNative()V

    .line 856
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$smcloseMemStatusMonitorNative()V

    .line 857
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->-$$Nest$smdestroyStatusMonitorNative()V

    const/4 v0, 0x0

    .line 859
    iput-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->memInfo:Lcom/android/internal/util/MemInfoReader;

    const-string p0, "SystemStatusMonitor stop"

    .line 860
    invoke-static {p0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final updateSystemStatus(I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_13

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_10

    .line 910
    iget-object v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->resources:[Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->setBusy()V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemStatusMonitor;->applyNewSystemStatus()V

    return-void
.end method
