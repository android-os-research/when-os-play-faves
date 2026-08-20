.class Lcom/android/internal/telephony/DrxController$ChangeDrxThread;
.super Ljava/lang/Thread;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DrxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeDrxThread"
.end annotation


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mResult:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/DrxController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResult(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/DrxController;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mDone:Z

    .line 186
    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z

    return-void
.end method


# virtual methods
.method declared-synchronized blacklist changeDRX(I)Z
    .registers 7

    monitor-enter p0

    .line 222
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_148

    if-nez v0, :cond_11

    .line 224
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_148

    goto :goto_1

    .line 226
    :catch_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_11
    const/16 v1, 0x64

    .line 229
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_148

    const/4 v3, 0x2

    .line 234
    :try_start_22
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x2d

    .line 235
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    .line 236
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 237
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 238
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {v3}, Lcom/android/internal/telephony/DrxController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/DrxController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3e} :catch_c1
    .catchall {:try_start_22 .. :try_end_3e} :catchall_bf

    .line 245
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_148

    goto :goto_59

    :catch_42
    move-exception v0

    .line 247
    :try_start_43
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during changeDRX #2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_148

    .line 250
    :goto_59
    :try_start_59
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_148

    goto :goto_74

    :catch_5d
    move-exception v0

    .line 252
    :try_start_5e
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during changeDRX #3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 256
    :goto_74
    iget-boolean v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mDone:Z
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_148

    if-nez v0, :cond_84

    .line 259
    :try_start_78
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_148

    goto :goto_74

    .line 262
    :catch_7c
    :try_start_7c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_74

    .line 265
    :cond_84
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done. changeDRX - cn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_ad

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_ae

    :cond_ad
    const/4 p1, 0x0

    :goto_ae
    if-eqz p1, :cond_b4

    .line 270
    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V

    goto :goto_bb

    .line 272
    :cond_b4
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string v0, "changeDRX - Unexpected case. No looper"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 275
    :goto_bb
    iget-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z
    :try_end_bd
    .catchall {:try_start_7c .. :try_end_bd} :catchall_148

    monitor-exit p0

    return p1

    :catchall_bf
    move-exception p1

    goto :goto_111

    :catch_c1
    move-exception p1

    .line 240
    :try_start_c2
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during changeDRX #1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_c2 .. :try_end_d8} :catchall_bf

    const/4 p1, 0x0

    .line 245
    :try_start_d9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_148

    goto :goto_f4

    :catch_dd
    move-exception v0

    .line 247
    :try_start_de
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during changeDRX #2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_de .. :try_end_f4} :catchall_148

    .line 250
    :goto_f4
    :try_start_f4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_148

    goto :goto_10f

    :catch_f8
    move-exception v0

    .line 252
    :try_start_f9
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during changeDRX #3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_10f
    .catchall {:try_start_f9 .. :try_end_10f} :catchall_148

    .line 242
    :goto_10f
    monitor-exit p0

    return p1

    .line 245
    :goto_111
    :try_start_111
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115
    .catchall {:try_start_111 .. :try_end_114} :catchall_148

    goto :goto_12c

    :catch_115
    move-exception v0

    .line 247
    :try_start_116
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during changeDRX #2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_116 .. :try_end_12c} :catchall_148

    .line 250
    :goto_12c
    :try_start_12c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_130
    .catchall {:try_start_12c .. :try_end_12f} :catchall_148

    goto :goto_147

    :catch_130
    move-exception v0

    .line 252
    :try_start_131
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during changeDRX #3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 254
    :goto_147
    throw p1
    :try_end_148
    .catchall {:try_start_131 .. :try_end_148} :catchall_148

    :catchall_148
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 197
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 198
    monitor-enter p0

    .line 199
    :try_start_4
    new-instance v0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;-><init>(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mHandler:Landroid/os/Handler;

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 217
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 218
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_13
    move-exception v0

    .line 217
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
