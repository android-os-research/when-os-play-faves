.class public Lcom/android/server/backup/DataChangedJournal;
.super Ljava/lang/Object;
.source "DataChangedJournal.java"


# static fields
.field public static final BUFFER_SIZE_BYTES:I = 0x2000

.field public static final FILE_NAME_PREFIX:Ljava/lang/String; = "journal"

.field public static final TAG:Ljava/lang/String; = "DataChangedJournal"


# instance fields
.field public final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    return-void
.end method

.method public static listJournals(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/DataChangedJournal;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_13

    const-string p0, "DataChangedJournal"

    const-string v1, "Failed to read journal files"

    .line 155
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 158
    :cond_13
    array-length v1, p0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_24

    aget-object v3, p0, v2

    .line 159
    new-instance v4, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v4, v3}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_24
    return-object v0
.end method

.method public static newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "journal"

    const/4 v1, 0x0

    .line 144
    invoke-static {v0, v1, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 145
    new-instance v0, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v0, p0}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    const-string/jumbo v1, "rws"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 72
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_18
    move-exception p0

    .line 69
    :try_start_19
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw p0
.end method

.method public delete()Z
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 123
    instance-of v0, p1, Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_f

    .line 124
    check-cast p1, Lcom/android/server/backup/DataChangedJournal;

    .line 125
    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    iget-object p1, p1, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_39

    .line 84
    :try_start_7
    new-instance p0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {p0, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_2f

    .line 85
    :try_start_e
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_25

    .line 88
    :goto_13
    :try_start_13
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_13

    :catchall_1b
    move-exception p1

    .line 82
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v1

    :try_start_21
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    :try_start_26
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    :try_start_2b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw p1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    :try_start_30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p1

    :try_start_35
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw p0
    :try_end_39
    .catch Ljava/io/EOFException; {:try_start_35 .. :try_end_39} :catch_39

    :catch_39
    return-void
.end method

.method public getPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Lcom/android/server/backup/DataChangedJournal$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/backup/DataChangedJournal$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
