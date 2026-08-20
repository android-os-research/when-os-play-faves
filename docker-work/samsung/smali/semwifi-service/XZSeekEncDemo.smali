.class LXZSeekEncDemo;
.super Ljava/lang/Object;
.source "XZSeekEncDemo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 30
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_13

    .line 31
    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/LZMA2Options;->setPreset(I)V

    :cond_13
    const/high16 v1, 0x100000

    .line 34
    array-length v4, p0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1f

    .line 35
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    :cond_1f
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result p0

    const/16 v2, 0x1000

    .line 38
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 37
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 41
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoder memory usage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getEncoderMemoryUsage()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " KiB"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoder memory usage: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDecoderMemoryUsage()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block size:           "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " B"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    new-instance p0, Lorg/tukaani/xz/XZOutputStream;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v2, v0}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V

    const/16 v0, 0x2000

    new-array v2, v0, [B

    :goto_92
    move v4, v1

    .line 53
    :cond_93
    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v2, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a4

    .line 66
    invoke-virtual {p0}, Lorg/tukaani/xz/XZOutputStream;->finish()V

    return-void

    .line 57
    :cond_a4
    invoke-virtual {p0, v2, v3, v5}, Lorg/tukaani/xz/XZOutputStream;->write([BII)V

    sub-int/2addr v4, v5

    if-nez v4, :cond_93

    .line 61
    invoke-virtual {p0}, Lorg/tukaani/xz/XZOutputStream;->endBlock()V

    goto :goto_92
.end method
