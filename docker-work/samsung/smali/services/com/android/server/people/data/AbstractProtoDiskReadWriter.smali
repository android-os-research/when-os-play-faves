.class public abstract Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.super Ljava/lang/Object;
.source "AbstractProtoDiskReadWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;,
        Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_DISK_WRITE_DELAY:J = 0x1d4c0L

.field public static final SHUTDOWN_DISK_WRITE_TIMEOUT:J = 0x1388L

.field public static final TAG:Ljava/lang/String; = "AbstractProtoDiskReadWriter"


# instance fields
.field public final mRootDir:Ljava/io/File;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public mScheduledFileDataMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field public mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8hKrFxaERM0k5Zmspu6vDGvnkqA(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->flushScheduledData()V

    return-void
.end method

.method public static synthetic $r8$lambda$xO0W3CCwasK1I_FEyFVkvRPrN_c(Ljava/lang/String;Ljava/io/File;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->lambda$read$0(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 83
    iput-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    .line 84
    iput-object p2, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic lambda$read$0(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 4

    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_33

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_12

    return-void

    .line 96
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_32

    .line 97
    sget-object p1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void

    :catchall_33
    move-exception p1

    .line 91
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public final declared-synchronized flushScheduledData()V
    .registers 5

    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 200
    iput-object v1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_37

    .line 201
    monitor-exit p0

    return-void

    .line 203
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    iget-object v3, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 205
    invoke-virtual {p0, v2, v3}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->writeTo(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    .line 207
    :cond_2e
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 208
    iput-object v1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_37

    .line 209
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 226
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final parseFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 214
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 215
    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_28

    .line 216
    :try_start_9
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;->read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1c

    if-eqz p1, :cond_1b

    .line 218
    :try_start_18
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_28

    :cond_1b
    return-object p0

    :catchall_1c
    move-exception p0

    if-eqz p1, :cond_27

    .line 215
    :try_start_1f
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    :try_start_24
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_28

    :catch_28
    move-exception p0

    .line 219
    sget-object p1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string v0, "Failed to parse protobuf file."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    new-instance v1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 131
    array-length v0, p1

    if-nez v0, :cond_11

    goto :goto_37

    .line 133
    :cond_11
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2f

    .line 135
    sget-object v0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found multiple files with the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 v0, 0x0

    .line 137
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->parseFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_37
    :goto_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 169
    monitor-enter p0

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    .line 172
    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->triggerScheduledFlushEarly()V

    return-void

    :catchall_b
    move-exception p1

    .line 171
    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 150
    sget-object p1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string p2, "Worker is shutdown, failed to schedule data saving."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_31

    .line 151
    monitor-exit p0

    return-void

    .line 155
    :cond_17
    :try_start_17
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_31

    if-eqz p1, :cond_1d

    .line 156
    monitor-exit p0

    return-void

    .line 159
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V

    const-wide/32 v0, 0x1d4c0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_31

    .line 161
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final triggerScheduledFlushEarly()V
    .registers 4

    .line 177
    monitor-enter p0

    .line 178
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_37

    .line 182
    :cond_12
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    .line 183
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 185
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_39

    .line 189
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v0, 0x1388

    .line 191
    :try_start_28
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_28 .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception p0

    .line 193
    sget-object v0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to save data immediately."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void

    .line 179
    :cond_37
    :goto_37
    :try_start_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    .line 185
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public writeTo(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 104
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 108
    :try_start_9
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_29

    .line 115
    :try_start_d
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;

    move-result-object p0

    invoke-interface {p0, v1, p2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;->write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 118
    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_24

    const/4 p0, 0x0

    .line 122
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_24
    move-exception p0

    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 123
    throw p0

    :catch_29
    move-exception p0

    .line 110
    sget-object p1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string p2, "Failed to write to protobuf file."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
