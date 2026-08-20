.class public final Lcom/android/server/backup/ProcessedPackagesJournal;
.super Ljava/lang/Object;
.source "ProcessedPackagesJournal.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final JOURNAL_FILE_NAME:Ljava/lang/String; = "processed"

.field public static final TAG:Ljava/lang/String; = "ProcessedPackagesJournal"


# instance fields
.field public final mProcessedPackages:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcessedPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mStateDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 66
    iput-object p1, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 91
    monitor-exit v0

    return-void

    .line 94
    :cond_d
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    const-string/jumbo v2, "processed"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_57

    .line 96
    :try_start_17
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rws"

    invoke-direct {p0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_37
    .catchall {:try_start_17 .. :try_end_1f} :catchall_57

    .line 97
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 98
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    .line 99
    :try_start_29
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_37
    .catchall {:try_start_29 .. :try_end_2c} :catchall_57

    goto :goto_55

    :catchall_2d
    move-exception v2

    .line 96
    :try_start_2e
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception p0

    :try_start_33
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_36
    throw v2
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_37} :catch_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_57

    :catch_37
    :try_start_37
    const-string p0, "ProcessedPackagesJournal"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t log backup of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public getPackagesCopy()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 116
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public hasBeenProcessed(Ljava/lang/String;)Z
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 84
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public init()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 74
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/backup/ProcessedPackagesJournal;->loadFromDisk()V

    .line 75
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final loadFromDisk()V
    .registers 6

    const-string v0, "ProcessedPackagesJournal"

    .line 129
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    const-string/jumbo v3, "processed"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    return-void

    .line 135
    :cond_13
    :try_start_13
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_22} :catch_50
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_22} :catch_4a

    .line 138
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_40

    goto :goto_22

    :catchall_40
    move-exception p0

    .line 135
    :try_start_41
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v1

    :try_start_46
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw p0
    :try_end_4a
    .catch Ljava/io/EOFException; {:try_start_46 .. :try_end_4a} :catch_50
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p0

    const-string v1, "Error reading processed packages journal"

    .line 147
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_50
    return-void
.end method

.method public reset()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 123
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    const-string/jumbo v2, "processed"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 125
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method
