.class Lcom/android/server/ssrm/PreMonitor$4;
.super Ljava/lang/Object;
.source "PreMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/PreMonitor;->bootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 570
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 572
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "run:: The PreSIOP is deactivating now."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v1, v1, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 575
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sArmDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 578
    :cond_1e
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v1, v1, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    if-eq v1, v2, :cond_29

    .line 579
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sGpuDVFSHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 581
    :cond_29
    sget-object v1, Lcom/android/server/ssrm/PreMonitor;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 584
    .local v1, "maxBrightness":I
    invoke-static {v1}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    .line 585
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->notifyMaxBrightnessToSettings()V

    .line 587
    sget-object v3, Lcom/android/server/ssrm/PreMonitor;->sSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget-boolean v3, v3, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->button:Z

    if-nez v3, :cond_6d

    .line 588
    invoke-static {v2}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxButtonBrightness(I)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4e
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4c

    goto :goto_6d

    .line 593
    .end local v1    # "maxBrightness":I
    :catchall_4c
    move-exception v1

    goto :goto_71

    .line 590
    :catch_4e
    move-exception v1

    .line 591
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4f
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_4c

    .line 593
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6d
    :goto_6d
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    .line 594
    nop

    .line 595
    return-void

    .line 593
    :goto_71
    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->sSiopEnabled:Z

    .line 594
    throw v1
.end method
