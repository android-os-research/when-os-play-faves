.class public Lcom/android/server/apphibernation/HibernationStateDiskStore;
.super Ljava/lang/Object;
.source "HibernationStateDiskStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DISK_WRITE_DELAY:J = 0xea60L

.field public static final STATES_FILE_NAME:Ljava/lang/String; = "states"

.field public static final TAG:Ljava/lang/String; = "HibernationStateDiskStore"


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final mHibernationFile:Ljava/io/File;

.field public final mProtoReadWriter:Lcom/android/server/apphibernation/ProtoReadWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/apphibernation/ProtoReadWriter<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public mScheduledStatesToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$B1bWH21IL4wJdYbGLFzpWRtHy4U(Lcom/android/server/apphibernation/HibernationStateDiskStore;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->writeHibernationStates()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/apphibernation/ProtoReadWriter<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "states"

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;-><init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/apphibernation/ProtoReadWriter<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mScheduledStatesToWrite:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    .line 77
    iput-object p3, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 78
    iput-object p2, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mProtoReadWriter:Lcom/android/server/apphibernation/ProtoReadWriter;

    return-void
.end method


# virtual methods
.method public readHibernationStates()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 114
    monitor-enter p0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    const-string v0, "HibernationStateDiskStore"

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No hibernation file on disk for file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    monitor-exit p0

    return-object v1

    .line 119
    :cond_28
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_4c

    .line 122
    :try_start_2f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 123
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mProtoReadWriter:Lcom/android/server/apphibernation/ProtoReadWriter;

    invoke-interface {v0, v2}, Lcom/android/server/apphibernation/ProtoReadWriter;->readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_40} :catch_42
    .catchall {:try_start_2f .. :try_end_40} :catchall_4c

    :try_start_40
    monitor-exit p0

    return-object v0

    :catch_42
    move-exception v0

    const-string v2, "HibernationStateDiskStore"

    const-string v3, "Failed to read states protobuf."

    .line 126
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    monitor-exit p0

    return-object v1

    :catchall_4c
    move-exception v0

    .line 129
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public scheduleWriteHibernationStates(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iput-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mScheduledStatesToWrite:Ljava/util/List;

    .line 90
    iget-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "HibernationStateDiskStore"

    const-string v0, "Scheduled executor service is shut down."

    .line 91
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit p0

    return-void

    .line 96
    :cond_14
    iget-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_21

    const-string p1, "HibernationStateDiskStore"

    const-string v0, "Write already scheduled. Skipping schedule."

    .line 97
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    monitor-exit p0

    return-void

    .line 101
    :cond_21
    iget-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/android/server/apphibernation/HibernationStateDiskStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/HibernationStateDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/apphibernation/HibernationStateDiskStore;)V

    const-wide/32 v1, 0xea60

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 103
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public final writeHibernationStates()V
    .registers 2

    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mScheduledStatesToWrite:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->writeStateProto(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mScheduledStatesToWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 138
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final writeStateProto(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "HibernationStateDiskStore"

    .line 143
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 147
    :try_start_9
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_28

    .line 154
    :try_start_d
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 155
    iget-object p0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mProtoReadWriter:Lcom/android/server/apphibernation/ProtoReadWriter;

    invoke-interface {p0, v3, p1}, Lcom/android/server/apphibernation/ProtoReadWriter;->writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 157
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_1e

    goto :goto_27

    :catch_1e
    move-exception p0

    const-string p1, "Failed to finish write to states protobuf."

    .line 159
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_27
    return-void

    :catch_28
    move-exception p0

    const-string p1, "Failed to start write to states protobuf."

    .line 149
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
