.class public Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
.super Ljava/lang/Thread;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlashNotiThread"
.end annotation


# instance fields
.field public color:I

.field public isFlash:Z

.field public isScreen:Z

.field public final mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

.field public mForceStop:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    .registers 3

    .line 6558
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 6554
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->color:I

    .line 6555
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->isScreen:Z

    .line 6556
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->isFlash:Z

    .line 6559
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    .line 6560
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 6620
    monitor-enter p0

    .line 6621
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmThread(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    .line 6622
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmThread(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 6623
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final delay(J)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1d

    .line 6628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 6631
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_e

    .line 6634
    :catch_e
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-eqz p1, :cond_13

    goto :goto_1d

    .line 6637
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long p1, v2, p1

    cmp-long v4, p1, v0

    if-gtz v4, :cond_b

    :cond_1d
    :goto_1d
    return-void
.end method

.method public run()V
    .registers 7

    const/4 v0, -0x8

    .line 6564
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6565
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPreviewType(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 6566
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmSbnPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetScreenFlashColorPreference(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->color:I

    .line 6567
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v1, v2

    :cond_23
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->isScreen:Z

    .line 6568
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmSbnPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCameraFlashPreference(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->isFlash:Z

    goto :goto_65

    .line 6570
    :cond_34
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "flash_notification_preview_color"

    const v4, 0x66ffff00

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->color:I

    .line 6573
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPreviewType(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_56

    move v0, v2

    goto :goto_57

    :cond_56
    move v0, v1

    :goto_57
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->isScreen:Z

    .line 6574
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPreviewType(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_63

    move v1, v2

    :cond_63
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->isFlash:Z

    .line 6576
    :goto_65
    monitor-enter p0

    .line 6577
    :try_start_66
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_c7

    .line 6579
    :try_start_6f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->startFlashNoti()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_b2

    .line 6581
    :try_start_72
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoScreenFlashNotiOff(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6582
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoCameraFlashNotiOff(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6583
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6585
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_72 .. :try_end_86} :catchall_c7

    .line 6586
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmFlashNotifications(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 6587
    :try_start_8d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmThread(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_9b

    .line 6588
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fputmThread(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)V

    .line 6590
    :cond_9b
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-nez v1, :cond_ad

    .line 6591
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    if-eqz v1, :cond_a8

    .line 6592
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$munlinkFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    .line 6594
    :cond_a8
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fputmCurrentFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    .line 6596
    :cond_ad
    monitor-exit v0

    return-void

    :catchall_af
    move-exception p0

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_8d .. :try_end_b1} :catchall_af

    throw p0

    :catchall_b2
    move-exception v0

    .line 6581
    :try_start_b3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoScreenFlashNotiOff(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6582
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoCameraFlashNotiOff(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6583
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6584
    throw v0

    :catchall_c7
    move-exception v0

    .line 6585
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_b3 .. :try_end_c9} :catchall_c7

    throw v0
.end method

.method public final startFlashNoti()V
    .registers 4

    .line 6600
    monitor-enter p0

    .line 6601
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-nez v0, :cond_5c

    .line 6602
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmType(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmRepeat(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 6603
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmRepeat(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fputmRepeat(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;I)V

    if-nez v1, :cond_24

    goto :goto_5c

    .line 6606
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->isScreen:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->color:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoScreenFlashNotiOn(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 6607
    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->isFlash:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoCameraFlashNotiOn(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6608
    :cond_38
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmOnDuration(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->delay(J)V

    .line 6609
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoScreenFlashNotiOff(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6610
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoCameraFlashNotiOff(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6611
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mForceStop:Z

    if-eqz v0, :cond_51

    goto :goto_5c

    .line 6614
    :cond_51
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->mFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmOffDuration(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->delay(J)V

    goto :goto_1

    .line 6616
    :cond_5c
    :goto_5c
    monitor-exit p0

    return-void

    :catchall_5e
    move-exception v0

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_5e

    throw v0
.end method
