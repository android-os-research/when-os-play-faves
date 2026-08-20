.class Lcom/android/server/ssrm/PreMonitor$1;
.super Ljava/lang/Object;
.source "PreMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/PreMonitor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 301
    const-wide/16 v0, 0x7d0

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 303
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateBatteryTemperature()V

    .line 304
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v0

    .line 306
    .local v0, "batteryTemp":I
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v1, v1, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->triggerTemperature:I

    if-le v0, v1, :cond_2d

    .line 307
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run:: The PreSIOP is not activated. bat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void

    .line 311
    :cond_2d
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    .line 312
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run:: The PreSIOP is activated. bat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v1, v1, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6b

    .line 315
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const-string v3, "PRESIOP_ARM_MAX"

    const/16 v4, 0xd

    invoke-static {v1, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 317
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v3, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v3, v3, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 318
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 321
    :cond_6b
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v1, v1, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    if-eq v1, v2, :cond_8b

    .line 322
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    const-string v3, "PRESIOP_GPU_MAX"

    const/16 v4, 0x11

    invoke-static {v1, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->sGpuDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 324
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sGpuDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v3, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v3, v3, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 325
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sGpuDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 328
    :cond_8b
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v1, v1, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->brightness:I

    if-eq v1, v2, :cond_98

    .line 329
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v1, v1, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->brightness:I

    invoke-static {v1}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 332
    :cond_98
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget-boolean v1, v1, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->button:Z

    if-nez v1, :cond_a2

    .line 333
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxButtonBrightness(I)V

    .line 335
    :cond_a2
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$smSetPreMonitorLog()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a5} :catch_a6

    .line 338
    .end local v0    # "batteryTemp":I
    goto :goto_aa

    .line 336
    :catch_a6
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_aa
    return-void
.end method
