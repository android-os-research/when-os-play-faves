.class public abstract Lcom/samsung/android/server/wifi/util/SemPacketReader;
.super Ljava/lang/Object;
.source "SemPacketReader.java"


# static fields
.field public static final DEFAULT_RECV_BUF_SIZE:I = 0x800

.field private static final FD_EVENTS:I = 0x5

.field private static final UNREGISTER_THIS_FD:I


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private final mHandler:Landroid/os/Handler;

.field private final mPacket:[B

.field private mPacketsReceived:J

.field private final mQueue:Landroid/os/MessageQueue;


# direct methods
.method static bridge synthetic -$$Nest$mhandleInput(Lcom/samsung/android/server/wifi/util/SemPacketReader;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->handleInput()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRunning(Lcom/samsung/android/server/wifi/util/SemPacketReader;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterAndDestroyFd(Lcom/samsung/android/server/wifi/util/SemPacketReader;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->unregisterAndDestroyFd()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;)V
    .registers 3

    const/16 v0, 0x800

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;-><init>(Landroid/os/Handler;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;I)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mQueue:Landroid/os/MessageQueue;

    const/16 p1, 0x800

    .line 95
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacket:[B

    return-void
.end method

.method protected static closeFd(Ljava/io/FileDescriptor;)V
    .registers 1

    .line 85
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private createAndRegisterFd()Z
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 162
    :try_start_7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->createFd()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_21

    .line 165
    invoke-static {v2, v0}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_21

    :catch_13
    move-exception v2

    const-string v3, "Failed to create socket: "

    .line 168
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 169
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    .line 170
    iput-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 173
    :cond_21
    :goto_21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    if-nez v2, :cond_26

    return v0

    .line 175
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mQueue:Landroid/os/MessageQueue;

    const/4 v3, 0x5

    new-instance v4, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;-><init>(Lcom/samsung/android/server/wifi/util/SemPacketReader;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->onStart()V

    return v1
.end method

.method public static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 252
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->getObjectType([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 253
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 255
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1e

    :catch_15
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-nez p1, :cond_1f

    const/4 p0, 0x0

    :goto_1e
    return-object p0

    .line 259
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    throw p0
.end method

.method public static varargs getObjectType([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 266
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    :try_start_3
    const-string v1, "android.system.PacketSocketAddress"

    .line 268
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 269
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_72

    .line 270
    aget-object v3, p0, v2

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_18

    .line 271
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6f

    .line 272
    :cond_18
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_21

    .line 273
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6f

    .line 274
    :cond_21
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2a

    .line 275
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6f

    .line 276
    :cond_2a
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_33

    .line 277
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6f

    .line 278
    :cond_33
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_3c

    .line 279
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6f

    .line 280
    :cond_3c
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_45

    .line 281
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6f

    .line 282
    :cond_45
    instance-of v4, v3, Ljava/lang/Byte;

    if-eqz v4, :cond_4e

    .line 283
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    goto :goto_6f

    .line 284
    :cond_4e
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-nez v4, :cond_6b

    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_57

    goto :goto_6b

    .line 286
    :cond_57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v1, :cond_62

    .line 287
    const-class v3, Ljava/net/SocketAddress;

    aput-object v3, v0, v2

    goto :goto_6f

    .line 289
    :cond_62
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_6f

    .line 285
    :cond_6b
    :goto_6b
    const-class v3, Ljava/net/InetAddress;

    aput-object v3, v0, v2
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6f} :catch_73

    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_72
    return-object v0

    :catch_73
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleInput()Z
    .registers 8

    const-string v0, "readPacket error: "

    .line 199
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v1, 0x1

    .line 203
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacket:[B

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->readPacket(Ljava/io/FileDescriptor;[B)I

    move-result v2

    if-ge v2, v1, :cond_20

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "Socket closed, exiting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_55

    .line 208
    :cond_20
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacketsReceived:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacketsReceived:J
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_27} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_34

    .line 225
    :try_start_27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacket:[B

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->handlePacket([BI)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_2

    :catch_2d
    move-exception v0

    const-string v1, "handlePacket error: "

    .line 227
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_55

    :catch_34
    move-exception v1

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_55

    :catch_3f
    move-exception v2

    .line 210
    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v3, v4, :cond_47

    return v1

    .line 213
    :cond_47
    sget v1, Landroid/system/OsConstants;->EINTR:I

    if-ne v3, v1, :cond_4c

    goto :goto_2

    .line 216
    :cond_4c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_55
    :goto_55
    const/4 p0, 0x0

    return p0
.end method

.method private isRunning()Z
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private onCorrectThread()Z
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private unregisterAndDestroyFd()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_5

    return-void

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->onStop()V

    return-void
.end method


# virtual methods
.method protected abstract createFd()Ljava/io/FileDescriptor;
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected handlePacket([BI)V
    .registers 3

    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public final numPacketsReceived()J
    .registers 3

    .line 118
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacketsReceived:J

    return-wide v0
.end method

.method protected onStart()V
    .registers 1

    return-void
.end method

.method protected onStop()V
    .registers 1

    return-void
.end method

.method protected readPacket(Ljava/io/FileDescriptor;[B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    array-length p0, p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p0

    return p0
.end method

.method public final recvBufSize()I
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader;->mPacket:[B

    array-length p0, p0

    return p0
.end method

.method public start()Z
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->onCorrectThread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->createAndRegisterFd()Z

    move-result p0

    return p0

    .line 100
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "start() called from off-thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .registers 2

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->onCorrectThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->unregisterAndDestroyFd()V

    return-void

    .line 108
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "stop() called from off-thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
