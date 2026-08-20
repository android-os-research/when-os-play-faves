.class Lcom/android/server/ssrm/PreMonitor$2;
.super Ljava/lang/Object;
.source "PreMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/PreMonitor;->improveOverheatingInFota()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 412
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mIsPreMonitoringEnabled:Z

    if-nez v0, :cond_e

    .line 413
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPreMonitoringRunnable:: mIsPreMonitoringEnabled is false!"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void

    .line 417
    :cond_e
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateApTemperature()V

    .line 418
    const/4 v0, -0x1

    .line 419
    .local v0, "cpuMaxLimit":I
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_3RD_STEP:I

    if-lt v1, v2, :cond_1c

    .line 420
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_3RD:I

    move v0, v1

    goto :goto_2f

    .line 421
    :cond_1c
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_2ND_STEP:I

    if-lt v1, v2, :cond_26

    .line 422
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_2ND:I

    move v0, v1

    goto :goto_2f

    .line 423
    :cond_26
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    if-lt v1, v2, :cond_2f

    .line 424
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_1ST:I

    move v0, v1

    .line 427
    :cond_2f
    :goto_2f
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMQ:Z

    if-eqz v1, :cond_46

    .line 428
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_5TH_STEP:I

    if-lt v1, v2, :cond_3d

    .line 429
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_5TH:I

    move v0, v1

    goto :goto_46

    .line 430
    :cond_3d
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_4TH_STEP:I

    if-lt v1, v2, :cond_46

    .line 431
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_MAXLIMIT_4TH:I

    move v0, v1

    .line 435
    :cond_46
    :goto_46
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_56

    .line 436
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const-string v2, "PREMONITORING_ARM_MAX"

    const/16 v3, 0xd

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 439
    :cond_56
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_82

    sget v1, Lcom/android/server/ssrm/PreMonitor;->mLastCpuMaxLimit:I

    if-eq v1, v0, :cond_82

    .line 440
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreMonitoringRunnable:: cpuMaxLimit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 443
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 445
    :cond_82
    sput v0, Lcom/android/server/ssrm/PreMonitor;->mLastCpuMaxLimit:I

    .line 447
    sget v1, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b6

    .line 448
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_9a

    .line 449
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const-string v2, "PREMONITOR_LITTLE_ARM_MAX"

    const v3, 0x11001002

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 453
    :cond_9a
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_b6

    .line 454
    sget v1, Lcom/android/server/ssrm/PreMonitor;->sApTemperature:I

    sget v2, Lcom/android/server/ssrm/PreMonitor;->AP_TEMP_1ST_STEP:I

    if-lt v1, v2, :cond_b1

    .line 455
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget v2, Lcom/android/server/ssrm/PreMonitor;->CPU_LITTLE_MAXLIMIT:I

    .line 456
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 457
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto :goto_b6

    .line 459
    :cond_b1
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmLittleDVFSPreMonitorHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 464
    :cond_b6
    :goto_b6
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$smSetPreMonitorLog()V

    .line 466
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_be
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_be} :catch_bf

    .end local v0    # "cpuMaxLimit":I
    goto :goto_c3

    .line 467
    :catch_bf
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 469
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_c3
    goto/16 :goto_0
.end method
