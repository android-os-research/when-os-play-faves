.class Lcom/android/internal/telephony/DrxController$GetDrxThread;
.super Ljava/lang/Thread;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DrxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDrxThread"
.end annotation


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mResult:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/DrxController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResult(Lcom/android/internal/telephony/DrxController$GetDrxThread;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/DrxController$GetDrxThread;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/DrxController$GetDrxThread;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/DrxController;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 303
    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mDone:Z

    .line 304
    sget p1, Lcom/android/internal/telephony/DrxController;->DRX_CURRENT_CYCLE_FAIL:I

    iput p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I

    return-void
.end method


# virtual methods
.method declared-synchronized blacklist getActiveDrxCn()I
    .registers 7

    monitor-enter p0

    .line 340
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13e

    if-nez v0, :cond_11

    .line 342
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_13e

    goto :goto_1

    .line 344
    :catch_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_11
    const/16 v1, 0x64

    .line 347
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 350
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_13e

    const/4 v3, 0x2

    .line 352
    :try_start_22
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x2c

    .line 353
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 354
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 355
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {v3}, Lcom/android/internal/telephony/DrxController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/DrxController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3b} :catch_b6
    .catchall {:try_start_22 .. :try_end_3b} :catchall_b4

    .line 362
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_13e

    goto :goto_56

    :catch_3f
    move-exception v0

    .line 364
    :try_start_40
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during getActiveDrxCn #2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_13e

    .line 367
    :goto_56
    :try_start_56
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_13e

    goto :goto_71

    :catch_5a
    move-exception v0

    .line 369
    :try_start_5b
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during getActiveDrxCn #3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 373
    :goto_71
    iget-boolean v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mDone:Z
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_13e

    if-nez v0, :cond_81

    .line 376
    :try_start_75
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_78} :catch_79
    .catchall {:try_start_75 .. :try_end_78} :catchall_13e

    goto :goto_71

    .line 379
    :catch_79
    :try_start_79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_71

    .line 382
    :cond_81
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done. getActiveDrxCn - cn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a3

    :cond_a2
    const/4 v0, 0x0

    :goto_a3
    if-eqz v0, :cond_a9

    .line 387
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_b0

    .line 389
    :cond_a9
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string v1, "getActiveDrxCn - Unexpected case. No looper"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 392
    :goto_b0
    iget v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I
    :try_end_b2
    .catchall {:try_start_79 .. :try_end_b2} :catchall_13e

    monitor-exit p0

    return v0

    :catchall_b4
    move-exception v0

    goto :goto_107

    :catch_b6
    move-exception v0

    .line 357
    :try_start_b7
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during getActiveDrxCn #1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 359
    sget v0, Lcom/android/internal/telephony/DrxController;->DRX_CURRENT_CYCLE_FAIL:I
    :try_end_cf
    .catchall {:try_start_b7 .. :try_end_cf} :catchall_b4

    .line 362
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3
    .catchall {:try_start_cf .. :try_end_d2} :catchall_13e

    goto :goto_ea

    :catch_d3
    move-exception v2

    .line 364
    :try_start_d4
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during getActiveDrxCn #2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_d4 .. :try_end_ea} :catchall_13e

    .line 367
    :goto_ea
    :try_start_ea
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee
    .catchall {:try_start_ea .. :try_end_ed} :catchall_13e

    goto :goto_105

    :catch_ee
    move-exception v1

    .line 369
    :try_start_ef
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during getActiveDrxCn #3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_ef .. :try_end_105} :catchall_13e

    .line 359
    :goto_105
    monitor-exit p0

    return v0

    .line 362
    :goto_107
    :try_start_107
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10b
    .catchall {:try_start_107 .. :try_end_10a} :catchall_13e

    goto :goto_122

    :catch_10b
    move-exception v2

    .line 364
    :try_start_10c
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during getActiveDrxCn #2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_122
    .catchall {:try_start_10c .. :try_end_122} :catchall_13e

    .line 367
    :goto_122
    :try_start_122
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_126
    .catchall {:try_start_122 .. :try_end_125} :catchall_13e

    goto :goto_13d

    :catch_126
    move-exception v1

    .line 369
    :try_start_127
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during getActiveDrxCn #3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 371
    :goto_13d
    throw v0
    :try_end_13e
    .catchall {:try_start_127 .. :try_end_13e} :catchall_13e

    :catchall_13e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 315
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 316
    monitor-enter p0

    .line 317
    :try_start_4
    new-instance v0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;-><init>(Lcom/android/internal/telephony/DrxController$GetDrxThread;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mHandler:Landroid/os/Handler;

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 336
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_13
    move-exception v0

    .line 335
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
