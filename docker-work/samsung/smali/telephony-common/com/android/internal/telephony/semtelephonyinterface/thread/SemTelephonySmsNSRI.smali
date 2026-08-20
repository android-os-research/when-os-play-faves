.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;
.super Ljava/lang/Thread;
.source "SemTelephonySmsNSRI.java"


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIntResult:I

.field private blacklist mResult:[B

.field private volatile blacklist mSmsNSRILooper:Landroid/os/Looper;

.field private final blacklist phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;[B)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mResult:[B

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z

    const-string v0, "SemTelephonySmsNSRI"

    const-string v1, "[NSRI_SMS] .. created !"

    .line 58
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method declared-synchronized blacklist checkNSRIUsimCmd()I
    .registers 7

    monitor-enter p0

    .line 304
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7a

    if-nez v0, :cond_11

    .line 306
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_7a

    goto :goto_1

    .line 308
    :catch_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_11
    const/4 v1, 0x4

    .line 312
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 313
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 314
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    .line 315
    iput-boolean v4, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_7a

    const/16 v5, 0x16

    .line 319
    :try_start_25
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x73

    .line 320
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 321
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_30} :catch_31
    .catchall {:try_start_25 .. :try_end_30} :catchall_7a

    goto :goto_38

    :catch_31
    :try_start_31
    const-string v1, "SemTelephonySmsNSRI"

    const-string v3, "[NSRI_SMS] IOException!!! -checkNSRIUsimCmd-"

    .line 323
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_38
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 328
    :goto_41
    iget-boolean v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_7a

    if-nez v0, :cond_58

    :try_start_45
    const-string v0, "SemTelephonySmsNSRI"

    const-string v1, "[NSRI_SMS] SemTelephonySmsNSRI ..wait for done"

    .line 330
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4f} :catch_50
    .catchall {:try_start_45 .. :try_end_4f} :catchall_7a

    goto :goto_41

    .line 334
    :catch_50
    :try_start_50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_41

    .line 337
    :cond_58
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mResult:[B

    aget-byte v0, v0, v4

    iput v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mIntResult:I

    const-string v0, "SemTelephonySmsNSRI"

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NSRI_SMS] ==done==   mIntResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mIntResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mIntResult:I
    :try_end_78
    .catchall {:try_start_50 .. :try_end_78} :catchall_7a

    monitor-exit p0

    return v0

    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 65
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mSmsNSRILooper:Landroid/os/Looper;

    .line 67
    monitor-enter p0

    .line 69
    :try_start_a
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;-><init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 157
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_19
    move-exception v0

    .line 155
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method declared-synchronized blacklist smsNSRIDecryptCmd([BI)[B
    .registers 9

    monitor-enter p0

    .line 218
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6b

    if-nez v0, :cond_11

    .line 220
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_6b

    goto :goto_1

    .line 222
    :catch_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_11
    const/4 v1, 0x2

    .line 226
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    .line 229
    iput-boolean v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_6b

    add-int/lit8 v4, p2, 0x5

    const/16 v5, 0x16

    .line 233
    :try_start_27
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x71

    .line 234
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 235
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 236
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 237
    invoke-virtual {v2, p1, v3, p2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_38} :catch_39
    .catchall {:try_start_27 .. :try_end_38} :catchall_6b

    goto :goto_40

    :catch_39
    :try_start_39
    const-string p1, "SemTelephonySmsNSRI"

    const-string p2, "[NSRI_SMS] IOException!!! -smsNSRIDecryptCmd-"

    .line 239
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_40
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 244
    :goto_49
    iget-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_6b

    if-nez p1, :cond_60

    :try_start_4d
    const-string p1, "SemTelephonySmsNSRI"

    const-string p2, "[NSRI_SMS] SemTelephonySmsNSRI ..wait for done"

    .line 246
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_57} :catch_58
    .catchall {:try_start_4d .. :try_end_57} :catchall_6b

    goto :goto_49

    .line 250
    :catch_58
    :try_start_58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_49

    :cond_60
    const-string p1, "SemTelephonySmsNSRI"

    const-string p2, "done"

    .line 253
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mResult:[B
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_6b

    monitor-exit p0

    return-object p1

    :catchall_6b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist smsNSRIDecryptTxCmd(Ljava/lang/String;[BI)[B
    .registers 10

    monitor-enter p0

    .line 260
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_8c

    if-nez v0, :cond_11

    .line 262
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_8c

    goto :goto_1

    .line 264
    :catch_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_11
    const/4 v1, 0x3

    .line 268
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 270
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    .line 271
    iput-boolean v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_8c

    .line 274
    :try_start_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, 0x6

    const/16 v5, 0x16

    .line 275
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x72

    .line 276
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 277
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 279
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 280
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2, p2, v3, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_47} :catch_48
    .catchall {:try_start_23 .. :try_end_47} :catchall_8c

    goto :goto_4f

    :catch_48
    :try_start_48
    const-string p1, "SemTelephonySmsNSRI"

    const-string p2, "[NSRI_SMS] IOException!!! -smsNSRIDecryptTxCmd-"

    .line 283
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_4f
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 288
    :goto_58
    iget-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z
    :try_end_5a
    .catchall {:try_start_48 .. :try_end_5a} :catchall_8c

    if-nez p1, :cond_6f

    :try_start_5c
    const-string p1, "SemTelephonySmsNSRI"

    const-string p2, "[NSRI_SMS] SemTelephonySmsNSRI ..wait for done"

    .line 290
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_66} :catch_67
    .catchall {:try_start_5c .. :try_end_66} :catchall_8c

    goto :goto_58

    .line 294
    :catch_67
    :try_start_67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_58

    :cond_6f
    const-string p1, "SemTelephonySmsNSRI"

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[NSRI_SMS] ==done== smsNSRIDecryptTxCmd  retResult.length="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mResult:[B

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mResult:[B
    :try_end_8a
    .catchall {:try_start_67 .. :try_end_8a} :catchall_8c

    monitor-exit p0

    return-object p1

    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist smsNSRIEncryptCmd(Ljava/lang/String;[BI)[B
    .registers 10

    monitor-enter p0

    .line 162
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7a

    if-nez v0, :cond_11

    .line 164
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_7a

    goto :goto_1

    .line 166
    :catch_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_11
    const/4 v1, 0x1

    .line 170
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    .line 173
    iput-boolean v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_7a

    .line 179
    :try_start_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, 0x6

    const/16 v5, 0x16

    .line 180
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x70

    .line 181
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 182
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 184
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 185
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, p2, v3, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_47} :catch_48
    .catchall {:try_start_23 .. :try_end_47} :catchall_7a

    goto :goto_4f

    :catch_48
    :try_start_48
    const-string p1, "SemTelephonySmsNSRI"

    const-string p2, "[NSRI_SMS] IOException!!! -smsNSRIEncryptCmd-"

    .line 188
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_4f
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 193
    :goto_58
    iget-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mDone:Z
    :try_end_5a
    .catchall {:try_start_48 .. :try_end_5a} :catchall_7a

    if-nez p1, :cond_6f

    :try_start_5c
    const-string p1, "SemTelephonySmsNSRI"

    const-string p2, "[NSRI_SMS] SemTelephonySmsNSRI ..wait for done"

    .line 195
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_66} :catch_67
    .catchall {:try_start_5c .. :try_end_66} :catchall_7a

    goto :goto_58

    .line 199
    :catch_67
    :try_start_67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_58

    :cond_6f
    const-string p1, "SemTelephonySmsNSRI"

    const-string p2, "done"

    .line 202
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->mResult:[B
    :try_end_78
    .catchall {:try_start_67 .. :try_end_78} :catchall_7a

    monitor-exit p0

    return-object p1

    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
