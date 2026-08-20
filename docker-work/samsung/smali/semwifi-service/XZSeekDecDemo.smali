.class LXZSeekDecDemo;
.super Ljava/lang/Object;
.source "XZSeekDecDemo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/tukaani/xz/SeekableFileInputStream;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Lorg/tukaani/xz/SeekableFileInputStream;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v2, Lorg/tukaani/xz/SeekableXZInputStream;

    invoke-direct {v2, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;)V

    .line 30
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of XZ Streams: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getStreamCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of XZ Blocks: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getBlockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uncompressed size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Largest XZ Block size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getLargestBlockSize()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "List of Check IDs:"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getCheckTypes()I

    move-result v0

    move v3, v1

    :goto_89
    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ge v3, v4, :cond_ac

    shl-int v4, v5, v3

    and-int/2addr v4, v0

    if-eqz v4, :cond_a9

    .line 42
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 43
    :cond_ac
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 45
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index memory usage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Lorg/tukaani/xz/SeekableXZInputStream;->getIndexMemoryUsage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " KiB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x2000

    new-array v3, v0, [B

    .line 49
    array-length v4, p0

    const/4 v6, -0x1

    if-ne v4, v5, :cond_e4

    .line 51
    :goto_d8
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-eq p0, v6, :cond_11a

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3, v1, p0}, Ljava/io/PrintStream;->write([BII)V

    goto :goto_d8

    :cond_e4
    move v4, v5

    .line 54
    :goto_e5
    array-length v7, p0

    if-ge v4, v7, :cond_11a

    .line 55
    aget-object v7, p0, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    .line 56
    aget-object v8, p0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v9, v7

    .line 58
    invoke-virtual {v2, v9, v10}, Lorg/tukaani/xz/SeekableXZInputStream;->seek(J)V

    :goto_fa
    if-lez v8, :cond_117

    .line 61
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 62
    invoke-virtual {v2, v3, v1, v7}, Lorg/tukaani/xz/SeekableXZInputStream;->read([BII)I

    move-result v7

    if-ne v7, v6, :cond_110

    .line 65
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Error: End of file reached"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 69
    :cond_110
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v3, v1, v7}, Ljava/io/PrintStream;->write([BII)V

    sub-int/2addr v8, v7

    goto :goto_fa

    :cond_117
    add-int/lit8 v4, v4, 0x2

    goto :goto_e5

    :cond_11a
    return-void
.end method
