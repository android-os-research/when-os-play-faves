.class public final Lokhttp3/internal/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field public final cleanFiles:[Ljava/io/File;

.field public currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field public final dirtyFiles:[Ljava/io/File;

.field public final key:Ljava/lang/String;

.field public final lengths:[J

.field public readable:Z

.field public sequenceNumber:J

.field public final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 9

    .line 969
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 972
    iget v0, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v1, v0, [J

    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    .line 973
    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 974
    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 979
    :goto_24
    iget v2, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_54

    .line 980
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 981
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 982
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 984
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_54
    return-void
.end method


# virtual methods
.method public final invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected journal line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLengths([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 990
    array-length v0, p1

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x0

    .line 995
    :goto_8
    :try_start_8
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 996
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_15} :catch_19

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    return-void

    .line 999
    :catch_19
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 991
    :cond_1e
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 11

    .line 1020
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1022
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v0, v0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Lokio/Source;

    .line 1023
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [J

    const/4 v8, 0x0

    move v1, v8

    .line 1025
    :goto_19
    :try_start_19
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v3, v2, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v3, :cond_2e

    .line 1026
    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1028
    :cond_2e
    new-instance v9, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_39} :catch_3a

    return-object v9

    .line 1031
    :catch_3a
    :goto_3a
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v2, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v8, v2, :cond_4a

    .line 1032
    aget-object v2, v0, v8

    if-eqz v2, :cond_4a

    .line 1033
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 1041
    :cond_4a
    :try_start_4a
    invoke-virtual {v1, p0}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4d

    :catch_4d
    const/4 p0, 0x0

    return-object p0

    .line 1020
    :cond_4f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public writeLengths(Lokio/BufferedSink;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_14

    aget-wide v2, p0, v1

    const/16 v4, 0x20

    .line 1006
    invoke-interface {p1, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method
