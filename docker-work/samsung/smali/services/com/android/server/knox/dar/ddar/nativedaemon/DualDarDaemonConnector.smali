.class public final Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;
.super Ljava/lang/Object;
.source "DualDarDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x1000

.field public static final CMD_BUF_SIZE_MAX:I = 0x320

.field public static final DEFAULT_TIMEOUT_MS:I = 0xea60

.field public static final RESPONSE_QUEUE_SIZE:I = 0xa

.field public static final TAG:Ljava/lang/String; = "DualDarDaemonConnector"


# instance fields
.field public mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

.field public final mDaemonLock:Ljava/lang/Object;

.field public mIsListening:Z

.field public final mLooper:Landroid/os/Looper;

.field public mOutputStream:Ljava/io/OutputStream;

.field public final mResponseQueue:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

.field public mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mSocket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    const-string v0, "ddar"

    .line 70
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    .line 72
    new-instance p2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    .line 73
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method public static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8

    const/16 v0, 0x20

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const/16 v2, 0x22

    if-eqz v0, :cond_13

    .line 197
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_17
    if-ge v1, v3, :cond_35

    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_25

    const-string v4, "\\\""

    .line 205
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_25
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2f

    const-string v4, "\\\\"

    .line 207
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 209
    :cond_2f
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_35
    if-eqz v0, :cond_3a

    .line 214
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3a
    return-void
.end method

.method public static varargs makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_5a

    const/16 v1, 0x20

    .line 173
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_52

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    array-length p1, p4

    move p2, v0

    :goto_20
    if-ge p2, p1, :cond_4e

    aget-object p3, p4, p2

    .line 180
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 181
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_37

    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {p0, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    .line 182
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected argument: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_4e
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 174
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arguments must be separate from command"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected command: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public varargs declared-synchronized execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 145
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 149
    iget-object p3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_47

    .line 150
    :try_start_19
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_27

    const-string p2, "DualDarDaemonConnector"

    const-string v1, "Missing Output stream - cannot write commands!"

    new-array v2, p1, [Ljava/lang/Object;

    .line 151
    invoke-static {p2, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_44

    goto :goto_3a

    .line 154
    :cond_27
    :try_start_27
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 155
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 156
    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([BB)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_35} :catch_36
    .catchall {:try_start_27 .. :try_end_35} :catchall_44

    goto :goto_3a

    :catch_36
    move-exception p2

    .line 158
    :try_start_37
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    :goto_3a
    monitor-exit p3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_44

    .line 163
    :try_start_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_47

    .line 164
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    .line 161
    :try_start_45
    monitor-exit p3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 98
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 100
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_ac

    .line 103
    :try_start_19
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v4, :cond_27

    const-string v2, "DualDarDaemonConnector"

    const-string v4, "Missing Output stream - cannot write commands!"

    new-array v5, p3, [Ljava/lang/Object;

    .line 104
    invoke-static {v2, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_a9

    goto :goto_3a

    .line 107
    :cond_27
    :try_start_27
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 108
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-static {v2, p3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_35} :catch_36
    .catchall {:try_start_27 .. :try_end_35} :catchall_a9

    goto :goto_3a

    :catch_36
    move-exception v2

    .line 111
    :try_start_37
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3a
    :goto_3a
    const-string v2, "DualDarDaemonConnector"

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command Sent : sequence Number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "task is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Command is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, p3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    const v4, 0xea60

    invoke-virtual {v2, v1, p2, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->remove(ILjava/lang/String;I)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v2

    if-nez v2, :cond_88

    const-string p1, "DualDarDaemonConnector"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timed-out waiting for response to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_8e

    .line 123
    :cond_88
    invoke-virtual {v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v4

    if-nez v4, :cond_3a

    :goto_8e
    if-eqz v2, :cond_9f

    .line 128
    invoke-virtual {v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassClientError()Z

    move-result p1

    if-eqz p1, :cond_9f

    const-string p1, "DualDarDaemonConnector"

    const-string p2, "event = null or isClassClientError = true"

    new-array v1, p3, [Ljava/lang/Object;

    .line 129
    invoke-static {p1, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    :cond_9f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, p3, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 134
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_37 .. :try_end_a7} :catchall_a9

    monitor-exit p0

    return-object v2

    :catchall_a9
    move-exception p1

    .line 135
    :try_start_aa
    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw p1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    :catchall_ac
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    const-string v0, "DualDarDaemonConnector"

    .line 331
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 333
    :try_start_8
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, p1, v1, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_45

    const-string p0, "Unhandled event \'%s\'"

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v3

    .line 334
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_26

    goto :goto_45

    :catch_26
    move-exception p0

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error handling \'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_45
    :goto_45
    return v2
.end method

.method public final listenToSocket()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    :try_start_2
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_13a
    .catchall {:try_start_2 .. :try_end_7} :catchall_137

    .line 226
    :try_start_7
    new-instance v3, Landroid/net/LocalSocketAddress;

    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 229
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 231
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 232
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_135
    .catchall {:try_start_7 .. :try_end_1a} :catchall_13d

    .line 233
    :try_start_1a
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 234
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_132

    .line 236
    :try_start_21
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    invoke-interface {v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    const/16 v4, 0x1000

    new-array v5, v4, [B

    :cond_2a
    move v6, v1

    :goto_2b
    rsub-int v7, v6, 0x1000

    .line 242
    invoke-virtual {v3, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_c0

    const-string v3, "DualDarDaemonConnector"

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " reading with start = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v1

    :goto_55
    if-ge v3, v4, :cond_5c

    .line 303
    aput-byte v1, v5, v3
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_59} :catch_135
    .catchall {:try_start_21 .. :try_end_59} :catchall_13d

    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 307
    :cond_5c
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 308
    :try_start_5f
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_bd

    if-eqz v4, :cond_9e

    :try_start_63
    const-string v4, "DualDarDaemonConnector"

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closing stream for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_82} :catch_83
    .catchall {:try_start_63 .. :try_end_82} :catchall_bd

    goto :goto_9c

    :catch_83
    move-exception v4

    :try_start_84
    const-string v5, "DualDarDaemonConnector"

    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed closing output stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 315
    :goto_9c
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 317
    :cond_9e
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_84 .. :try_end_9f} :catchall_bd

    .line 321
    :try_start_9f
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_bc

    :catch_a3
    move-exception p0

    const-string v0, "DualDarDaemonConnector"

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_bc
    return-void

    :catchall_bd
    move-exception p0

    .line 317
    :try_start_be
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw p0

    :cond_c0
    add-int/2addr v7, v6

    move v6, v1

    move v8, v6

    :goto_c3
    if-ge v6, v7, :cond_11e

    .line 253
    :try_start_c5
    aget-byte v9, v5, v6

    if-nez v9, :cond_11b

    .line 256
    new-instance v9, Ljava/lang/String;

    sub-int v10, v6, v8

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v5, v8, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v8, "DualDarDaemonConnector"

    .line 259
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rawEvent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/android/server/knox/dar/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_eb} :catch_135
    .catchall {:try_start_c5 .. :try_end_eb} :catchall_13d

    .line 261
    :try_start_eb
    invoke-static {v9, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v8

    .line 264
    invoke-virtual {v8}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v9

    if-eqz v9, :cond_f6

    goto :goto_119

    .line 278
    :cond_f6
    iget-object v9, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    invoke-virtual {v8}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getCmdNumber()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->add(ILcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;)V
    :try_end_ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_eb .. :try_end_ff} :catch_100
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ff} :catch_135
    .catchall {:try_start_eb .. :try_end_ff} :catchall_13d

    goto :goto_119

    :catch_100
    move-exception v8

    :try_start_101
    const-string v9, "DualDarDaemonConnector"

    .line 281
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem parsing message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v9, v8, v10}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_119
    add-int/lit8 v8, v6, 0x1

    :cond_11b
    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    :cond_11e
    if-nez v8, :cond_129

    const-string v6, "DualDarDaemonConnector"

    const-string v9, "RCV incomplete"

    new-array v10, v1, [Ljava/lang/Object;

    .line 289
    invoke-static {v6, v9, v10}, Lcom/android/server/knox/dar/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_129
    if-eq v8, v7, :cond_2a

    rsub-int v6, v8, 0x1000

    .line 296
    invoke-static {v5, v8, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_130} :catch_135
    .catchall {:try_start_101 .. :try_end_130} :catchall_13d

    goto/16 :goto_2b

    :catchall_132
    move-exception v3

    .line 234
    :try_start_133
    monitor-exit v4
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    :try_start_134
    throw v3
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_135} :catch_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_13d

    :catch_135
    move-exception v3

    goto :goto_13c

    :catchall_137
    move-exception v3

    move-object v2, v0

    goto :goto_13e

    :catch_13a
    move-exception v3

    move-object v2, v0

    .line 305
    :goto_13c
    :try_start_13c
    throw v3
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13d

    :catchall_13d
    move-exception v3

    .line 307
    :goto_13e
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    .line 308
    :try_start_141
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_143
    .catchall {:try_start_141 .. :try_end_143} :catchall_1a1

    if-eqz v5, :cond_180

    :try_start_145
    const-string v5, "DualDarDaemonConnector"

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing stream for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_164} :catch_165
    .catchall {:try_start_145 .. :try_end_164} :catchall_1a1

    goto :goto_17e

    :catch_165
    move-exception v5

    :try_start_166
    const-string v6, "DualDarDaemonConnector"

    .line 313
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed closing output stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 315
    :goto_17e
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 317
    :cond_180
    monitor-exit v4
    :try_end_181
    .catchall {:try_start_166 .. :try_end_181} :catchall_1a1

    if-eqz v2, :cond_1a0

    .line 321
    :try_start_183
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_187

    goto :goto_1a0

    :catch_187
    move-exception p0

    const-string v0, "DualDarDaemonConnector"

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing socket: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    :cond_1a0
    :goto_1a0
    throw v3

    :catchall_1a1
    move-exception p0

    .line 317
    :try_start_1a2
    monitor-exit v4
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a1

    throw p0
.end method

.method public run()V
    .registers 4

    .line 80
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    if-eqz v0, :cond_2d

    .line 82
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->listenToSocket()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    :catch_8
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error connectiong to DualDAR daemon in NativeDaemonConnector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DualDarDaemonConnector"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v0, 0x4b

    .line 85
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 86
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    invoke-interface {v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onDaemonDisconnected()Z

    goto :goto_0

    :cond_2d
    return-void
.end method

.method public setIsListening(Z)V
    .registers 2

    .line 219
    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    return-void
.end method
