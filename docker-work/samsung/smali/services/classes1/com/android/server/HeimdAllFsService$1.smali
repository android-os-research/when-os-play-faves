.class public Lcom/android/server/HeimdAllFsService$1;
.super Ljava/lang/Thread;
.source "HeimdAllFsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HeimdAllFsService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/HeimdAllFsService;


# direct methods
.method public constructor <init>(Lcom/android/server/HeimdAllFsService;Ljava/lang/String;)V
    .registers 3

    .line 474
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const-string/jumbo v0, "runIdleMaint, HeimdAllFS Thread End, latch down"

    const-string v1, "HeimdAllFS"

    :try_start_5
    const-string/jumbo v2, "runIdleMaint, HeimdAllFS Thread Start"

    .line 478
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fputmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;Ljava/util/concurrent/CountDownLatch;)V

    .line 480
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 481
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-static {}, Lcom/android/server/HeimdAllFsService;->isServiceActivate()Z

    move-result v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_149
    .catchall {:try_start_5 .. :try_end_2b} :catchall_147

    if-nez v3, :cond_42

    .line 523
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 525
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_41
    return-void

    :cond_42
    :try_start_42
    const-string/jumbo v3, "persist.sys.heimdallfs.force"

    .line 491
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_149
    .catchall {:try_start_42 .. :try_end_50} :catchall_147

    const-string/jumbo v5, "sys.heimdallfs.todayinfo"

    if-nez v3, :cond_79

    .line 492
    :try_start_55
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    const-string v2, "Once a day, bye bye"

    .line 493
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_64} :catch_149
    .catchall {:try_start_55 .. :try_end_64} :catchall_147

    .line 523
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 525
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_78
    return-void

    .line 496
    :cond_79
    :try_start_79
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.heimdallfs.force.mode"

    .line 499
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    new-instance v3, Landroid/os/StatFs;

    const-string v5, "/data/"

    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const-string v5, "compress"

    .line 501
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_108

    .line 502
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gez v5, :cond_a7

    goto :goto_108

    :cond_a7
    const-string v4, "decompress"

    .line 506
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 507
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v6, v8

    cmpl-double v2, v4, v6

    if-lez v2, :cond_c4

    goto :goto_e9

    .line 511
    :cond_c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do nothing!! available : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", total : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 508
    :cond_e9
    :goto_e9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decompress!! "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/HeimdAllFsService;->doCompressPackages(Z)V

    goto :goto_12c

    .line 503
    :cond_108
    :goto_108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compress!! "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {v2, v4}, Lcom/android/server/HeimdAllFsService;->doCompressPackages(Z)V

    .line 505
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    const-string v3, "/data/log"

    invoke-virtual {v2, v3}, Lcom/android/server/HeimdAllFsService;->doCompressFilesInDir(Ljava/lang/String;)V

    :goto_12c
    const-string v2, "HeimdAllFS Comp/Decomp process complete"

    .line 515
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-virtual {v2}, Lcom/android/server/HeimdAllFsService;->scanApkPackagesForBigdata()V

    const-string v2, "HeimdAllFS Thread End Normally"

    .line 518
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_13b} :catch_149
    .catchall {:try_start_79 .. :try_end_13b} :catchall_147

    .line 523
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_166

    goto :goto_15d

    :catchall_147
    move-exception v2

    goto :goto_167

    :catch_149
    move-exception v2

    :try_start_14a
    const-string v3, "Exception!!"

    .line 520
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_152
    .catchall {:try_start_14a .. :try_end_152} :catchall_147

    .line 523
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_166

    .line 525
    :goto_15d
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_166
    return-void

    .line 523
    :goto_167
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_17b

    .line 525
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->-$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 526
    :cond_17b
    throw v2
.end method
