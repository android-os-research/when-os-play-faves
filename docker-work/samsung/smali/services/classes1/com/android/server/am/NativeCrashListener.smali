.class public final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field public static final MORE_DEBUG:Z = false

.field public static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-lez p3, :cond_10

    add-int v1, p2, v0

    .line 182
    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    if-gtz v1, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_10
    return v0
.end method

.method public static unpackInt([BI)I
    .registers 5

    .line 171
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 172
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 173
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    .line 174
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 11

    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 199
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-wide/16 v3, 0x2710

    .line 202
    :try_start_b
    invoke-static {v3, v4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 203
    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v4, v5, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 204
    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v4, v5, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 211
    invoke-static {p1, v1, v4, v3}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-eq v5, v3, :cond_2e

    const-string p0, "NativeCrashListener"

    const-string p1, "Unable to read from debuggerd"

    .line 214
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_2e
    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v3

    const/4 v5, 0x4

    .line 219
    invoke-static {v1, v5}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v5

    if-lez v3, :cond_c0

    .line 227
    iget-object v6, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v6
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3e} :catch_c8

    .line 228
    :try_start_3e
    iget-object v7, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 229
    monitor-exit v6
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_bd

    if-eqz v7, :cond_a6

    .line 232
    :try_start_49
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_50

    return-void

    .line 242
    :cond_50
    invoke-static {p1, v1, v4, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    if-lez v3, :cond_63

    add-int/lit8 v6, v3, -0x1

    .line 249
    aget-byte v8, v1, v6

    if-nez v8, :cond_60

    .line 250
    invoke-virtual {v2, v1, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_65

    .line 254
    :cond_60
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_63
    if-gtz v3, :cond_50

    .line 265
    :goto_65
    iget-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_68} :catch_c8

    :try_start_68
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 266
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_a0

    :try_start_70
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 267
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 268
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setForceCrashReport(Z)V

    .line 269
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_9a

    :try_start_7f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 270
    monitor-exit p1
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_a0

    :try_start_83
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 275
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 276
    new-instance v0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v0, p0, v7, v5, p1}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_99} :catch_c8

    goto :goto_d0

    :catchall_9a
    move-exception p0

    .line 269
    :try_start_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_a0
    move-exception p0

    .line 270
    monitor-exit p1
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_a0

    :try_start_a2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_a6
    const-string p0, "NativeCrashListener"

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_bc} :catch_c8

    goto :goto_d0

    :catchall_bd
    move-exception p0

    .line 229
    :try_start_be
    monitor-exit v6
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    :try_start_bf
    throw p0

    :cond_c0
    const-string p0, "NativeCrashListener"

    const-string p1, "Bogus pid!"

    .line 281
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c7} :catch_c8

    goto :goto_d0

    :catch_c8
    move-exception p0

    const-string p1, "NativeCrashListener"

    const-string v0, "Exception dealing with report"

    .line 284
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d0
    return-void
.end method

.method public run()V
    .registers 9

    const-string v0, "NativeCrashListener"

    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 114
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/ndebugsocket"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 116
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 121
    :cond_15
    :try_start_15
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v5, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 122
    invoke-static {v4}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v5

    .line 124
    invoke-static {v3, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 125
    invoke-static {v3, v1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    const/16 v5, 0x1ff

    .line 126
    invoke-static {v4, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_57

    :catch_2d
    :cond_2d
    :goto_2d
    const/4 v4, 0x0

    .line 132
    :try_start_2e
    invoke-static {v3, v4}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 137
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_42
    .catchall {:try_start_2e .. :try_end_37} :catchall_40

    :cond_37
    if-eqz v4, :cond_2d

    .line 146
    :try_start_39
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3c

    .line 154
    :catch_3c
    :goto_3c
    :try_start_3c
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3f
    .catch Landroid/system/ErrnoException; {:try_start_3c .. :try_end_3f} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_57

    goto :goto_2d

    :catchall_40
    move-exception p0

    goto :goto_4e

    :catch_42
    move-exception v5

    :try_start_43
    const-string v7, "Error handling connection"

    .line 140
    invoke-static {v0, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_40

    if-eqz v4, :cond_2d

    .line 146
    :try_start_4a
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_3c

    goto :goto_3c

    :goto_4e
    if-eqz v4, :cond_56

    :try_start_50
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_53

    .line 154
    :catch_53
    :try_start_53
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_56
    .catch Landroid/system/ErrnoException; {:try_start_53 .. :try_end_56} :catch_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    .line 161
    :catch_56
    :cond_56
    :try_start_56
    throw p0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_57} :catch_57

    :catch_57
    move-exception p0

    const-string v1, "Unable to init native debug socket!"

    .line 164
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
