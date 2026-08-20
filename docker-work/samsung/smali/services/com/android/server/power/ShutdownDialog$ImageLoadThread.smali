.class public Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageLoadThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    .line 560
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$RunningCheckable-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$ImageLoadThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public final frameLoadLoop(Lcom/android/server/power/LibQmg;)V
    .registers 7

    .line 631
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 632
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmDrawHandler(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "ShutdownDialog"

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[frameLoadLoop] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQFront(Lcom/android/server/power/ShutdownDialog;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/server/power/LibQmg;->loadFrame(Landroid/graphics/Bitmap;)I

    move-result v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3e} :catch_99

    const-string v1, "ShutdownDialog"

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load frame: ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_96

    .line 645
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetdrawBufferLock(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 646
    :try_start_5e
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQFront(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fputbitmapQFront(Lcom/android/server/power/ShutdownDialog;I)V

    .line 647
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQFront(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3
    :try_end_7b
    .catchall {:try_start_5e .. :try_end_7b} :catchall_93

    if-ne v2, v3, :cond_91

    .line 649
    :try_start_7d
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetdrawBufferLock(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_88} :catch_89
    .catchall {:try_start_7d .. :try_end_88} :catchall_93

    goto :goto_91

    :catch_89
    move-exception v2

    :try_start_8a
    const-string v3, "ShutdownDialog"

    const-string v4, "InterruptedException"

    .line 651
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    :cond_91
    :goto_91
    monitor-exit v1

    goto :goto_96

    :catchall_93
    move-exception p0

    monitor-exit v1
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_93

    throw p0

    :cond_96
    :goto_96
    if-gtz v0, :cond_2c

    goto :goto_a2

    :catch_99
    move-exception p0

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "qmgLoadFrame return < 0"

    .line 639
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    :goto_a2
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->close()I

    return-void
.end method

.method public final multiFrameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V
    .registers 8

    .line 665
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    const-string v0, "ShutdownDialog"

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[multiframeLoadLoop] startMain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    const-string v0, "ShutdownDialog"

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[multiframeLoadLoop] startSub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmDrawHandler(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 674
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQFront(Lcom/android/server/power/ShutdownDialog;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/server/power/LibQmg;->loadFrame(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 675
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQFront(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/android/server/power/LibQmg;->loadFrame(Landroid/graphics/Bitmap;)I

    move-result v1
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_6d} :catch_d0

    const-string v2, "ShutdownDialog"

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load frame: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", load subframe: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_cd

    .line 683
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetdrawBufferLock(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 684
    :try_start_95
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQFront(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fputbitmapQFront(Lcom/android/server/power/ShutdownDialog;I)V

    .line 685
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQFront(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3
    :try_end_b2
    .catchall {:try_start_95 .. :try_end_b2} :catchall_ca

    if-ne v2, v3, :cond_c8

    .line 687
    :try_start_b4
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetdrawBufferLock(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_b4 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b4 .. :try_end_bf} :catchall_ca

    goto :goto_c8

    :catch_c0
    move-exception v2

    :try_start_c1
    const-string v3, "ShutdownDialog"

    const-string v4, "InterruptedException"

    .line 689
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    :cond_c8
    :goto_c8
    monitor-exit v1

    goto :goto_cd

    :catchall_ca
    move-exception p0

    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_c1 .. :try_end_cc} :catchall_ca

    throw p0

    :cond_cd
    :goto_cd
    if-gtz v0, :cond_49

    goto :goto_d9

    :catch_d0
    move-exception p0

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "qmgLoadFrame return < 0"

    .line 677
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    :goto_d9
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->close()I

    .line 696
    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->close()I

    return-void
.end method

.method public run()V
    .registers 11

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@ImageLoadThread.run(), qmgList.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmDrawHandler(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 569
    :goto_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8f

    .line 570
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_70

    .line 571
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    .line 572
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LibQmg;

    .line 573
    invoke-virtual {p0, v0, v3}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->multiFrameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 575
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2a

    .line 578
    :cond_70
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    .line 579
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_88
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_88} :catch_89

    goto :goto_2a

    :catch_89
    move-exception v0

    const-string v3, "!@qmgList or subqmgList IndexOutOfBoundsException"

    .line 585
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    :cond_8f
    iput-boolean v2, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "//system/media/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetSHUTDOWN_LOOP_FILES(Lcom/android/server/power/ShutdownDialog;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 592
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetb2bAnimPath(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_b9

    move-object v0, v5

    move-object v3, v0

    goto/16 :goto_153

    :cond_b9
    const-string/jumbo v4, "persist.sys.omc_respath"

    .line 595
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_153

    .line 596
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/media/video/shutdown/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetSHUTDOWN_LOOP_FILES(Lcom/android/server/power/ShutdownDialog;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_153

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetSHUTDOWN_LOOP_FILES(Lcom/android/server/power/ShutdownDialog;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetSHUTDOWN_LOOP_FILES(Lcom/android/server/power/ShutdownDialog;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_153

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetSHUTDOWN_LOOP_FILES(Lcom/android/server/power/ShutdownDialog;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 603
    :cond_153
    :goto_153
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    :goto_15c
    if-eqz v4, :cond_1bc

    if-eqz v3, :cond_198

    .line 607
    :try_start_160
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5, v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$maddToPlaylistIfExists(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z

    .line 608
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5, v3}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$maddToSubPlaylistIfExists(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z

    .line 609
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/LibQmg;

    .line 610
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/LibQmg;

    .line 611
    invoke-virtual {p0, v5, v6}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->multiFrameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 612
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 613
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_15c

    .line 616
    :cond_198
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5, v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$maddToPlaylistIfExists(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z

    .line 617
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/LibQmg;

    .line 618
    invoke-virtual {p0, v5}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;)V

    .line 619
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1b5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_160 .. :try_end_1b5} :catch_1b6

    goto :goto_15c

    :catch_1b6
    move-exception v0

    const-string v2, "!@loopqmgList or subloopqmgList IndexOutOfBoundsException"

    .line 624
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    :cond_1bc
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmDrawHandler(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
