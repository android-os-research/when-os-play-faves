.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;
.super Ljava/lang/Object;
.source "SemWifiTwtMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatedServiceStats([III)V
    .registers 11

    .line 460
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_13e

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_13e

    :cond_1a
    const/4 p2, 0x2

    .line 464
    aget p3, p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2c

    if-ne p3, p2, :cond_2a

    const/16 p3, 0x8

    aget p3, p1, p3

    if-ne p3, v1, :cond_2a

    goto :goto_2c

    :cond_2a
    move p3, v0

    goto :goto_2d

    :cond_2c
    :goto_2c
    move p3, v1

    .line 469
    :goto_2d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string v3, " "

    const/4 v4, 0x7

    if-nez v2, :cond_c2

    if-eqz p3, :cond_c2

    .line 470
    aget v2, p1, p2

    if-ne v2, v1, :cond_6e

    .line 471
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RTA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    aget p1, p1, v5

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    goto :goto_98

    .line 474
    :cond_6e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NRTA but TWT effective "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v4

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 478
    :goto_98
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    if-nez p1, :cond_135

    .line 479
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 480
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result p2

    or-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 481
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetinitialTrafficCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 482
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    const/16 p2, 0xbb8

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    goto :goto_135

    .line 484
    :cond_c2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_135

    if-nez p3, :cond_135

    .line 485
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NRTA/CG "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 487
    aget v0, p1, p2

    if-ne v0, p2, :cond_128

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object p2

    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    if-eqz p2, :cond_128

    aget p1, p1, v1

    if-ne p1, v1, :cond_128

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 490
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v0

    iget-wide v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->abnormalApDetMilliSec:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1770

    cmp-long p1, p1, v0

    if-gtz p1, :cond_128

    .line 491
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetAbnormalApPatchStat()V

    .line 494
    :cond_128
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 496
    :cond_135
    :goto_135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_13e
    :goto_13e
    return-void
.end method
