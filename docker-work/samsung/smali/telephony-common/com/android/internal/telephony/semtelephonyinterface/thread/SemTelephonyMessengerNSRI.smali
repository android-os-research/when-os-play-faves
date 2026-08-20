.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;
.super Ljava/lang/Thread;
.source "SemTelephonyMessengerNSRI.java"


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mResult:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;[B)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mResult:[B

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "SemTelephonyMessengerNSRI"

    const-string v1, "[NSRI_Messenger] SemTelephonyMessengerNSRI .. created !"

    .line 61
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist commonNSRIRequestProcCmd([BI)[B
    .registers 9

    monitor-enter p0

    .line 102
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6c

    if-nez v0, :cond_11

    .line 104
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_6c

    goto :goto_1

    .line 106
    :catch_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_11
    const/16 v1, 0xb

    .line 110
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    .line 113
    iput-boolean v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mDone:Z
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_6c

    add-int/lit8 v4, p2, 0x5

    const/16 v5, 0x16

    .line 117
    :try_start_28
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x74

    .line 118
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 119
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 120
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 121
    invoke-virtual {v2, p1, v3, p2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_39} :catch_3a
    .catchall {:try_start_28 .. :try_end_39} :catchall_6c

    goto :goto_41

    :catch_3a
    :try_start_3a
    const-string p1, "SemTelephonyMessengerNSRI"

    const-string p2, "[NSRI_Messenger] IOException!!! -commonNSRIRequestProcCmd-"

    .line 123
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_41
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 128
    :goto_4a
    iget-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mDone:Z
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_6c

    if-nez p1, :cond_61

    :try_start_4e
    const-string p1, "SemTelephonyMessengerNSRI"

    const-string p2, "[NSRI_Messenger] SemTelephonyMessengerNSRI ..wait for done"

    .line 130
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_58} :catch_59
    .catchall {:try_start_4e .. :try_end_58} :catchall_6c

    goto :goto_4a

    .line 134
    :catch_59
    :try_start_59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4a

    :cond_61
    const-string p1, "SemTelephonyMessengerNSRI"

    const-string p2, "[NSRI_Messenger] commonNSRIRequestProcCmd -done-"

    .line 137
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mResult:[B
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_6c

    monitor-exit p0

    return-object p1

    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 67
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 68
    monitor-enter p0

    .line 69
    :try_start_4
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;-><init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mHandler:Landroid/os/Handler;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 98
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_13
    move-exception v0

    .line 97
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
