.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;
.super Ljava/lang/Thread;
.source "SemTelephonyCommendToRIL.java"


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLoop:Landroid/os/Looper;

.field private blacklist mResult:Ljava/lang/String;

.field private final blacklist phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mResult:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mResult:Ljava/lang/String;

    const-string v0, "SemTelephonyCommendToRIL"

    const-string v1, "SemTelephonyCommendToRIL(Phone) is created"

    .line 53
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private declared-synchronized blacklist getInfoWaitDone()V
    .registers 3

    monitor-enter p0

    .line 144
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mDone:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-nez v0, :cond_1a

    :try_start_5
    const-string v0, "SemTelephonyCommendToRIL"

    const-string v1, "SemTelephonyCommendToRIL - wait for done"

    .line 146
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1388

    .line 147
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_11} :catch_12
    .catchall {:try_start_5 .. :try_end_11} :catchall_1c

    goto :goto_1

    .line 150
    :catch_12
    :try_start_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1c

    goto :goto_1

    .line 153
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist getInfoWaitHandler()V
    .registers 2

    monitor-enter p0

    .line 134
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_11

    .line 136
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    goto :goto_1

    .line 138
    :catch_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_13

    goto :goto_1

    .line 141
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist getInfo(II)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 92
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->getInfo(II[B)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist getInfo(II[B)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 96
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->getInfoWaitHandler()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mDone:Z

    .line 100
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_74

    const/4 v3, 0x4

    .line 105
    :try_start_12
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 106
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-eqz p3, :cond_24

    .line 108
    array-length p1, p3

    add-int/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 109
    array-length p1, p3

    invoke-virtual {v2, p3, v0, p1}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_27

    .line 111
    :cond_24
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_27} :catch_4d
    .catchall {:try_start_12 .. :try_end_27} :catchall_4b

    .line 118
    :goto_27
    :try_start_27
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 119
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_74

    .line 124
    :catch_2d
    :try_start_2d
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->getInfoWaitDone()V

    const-string p1, "SemTelephonyCommendToRIL"

    const-string p2, "SemTelephonyCommendToRIL - done"

    .line 129
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mResult:Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_74

    monitor-exit p0

    return-object p1

    :catchall_4b
    move-exception p1

    goto :goto_6d

    :catch_4d
    move-exception p1

    :try_start_4e
    const-string p2, "SemTelephonyCommendToRIL"

    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInfo is fail. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_4b

    const/4 p1, 0x0

    .line 118
    :try_start_65
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 119
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6b} :catch_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_74

    .line 115
    :catch_6b
    monitor-exit p0

    return-object p1

    .line 118
    :goto_6d
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 119
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_73} :catch_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_74

    .line 122
    :catch_73
    :try_start_73
    throw p1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 59
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mLoop:Landroid/os/Looper;

    .line 61
    monitor-enter p0

    .line 62
    :try_start_a
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL$1;-><init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->mHandler:Landroid/os/Handler;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 87
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 88
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_19
    move-exception v0

    .line 87
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method
