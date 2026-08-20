.class LLZMAEncDemo;
.super Ljava/lang/Object;
.source "LZMAEncDemo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
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

    .line 29
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 32
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_13

    .line 33
    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/LZMA2Options;->setPreset(I)V

    .line 35
    :cond_13
    array-length v1, p0

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1e

    .line 36
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_20

    :cond_1e
    const-wide/16 v3, -0x1

    .line 38
    :goto_20
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoder memory usage: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getEncoderMemoryUsage()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " KiB"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoder memory usage: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDecoderMemoryUsage()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    new-instance p0, Ljava/io/BufferedOutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    new-instance v1, Lorg/tukaani/xz/LZMAOutputStream;

    invoke-direct {v1, p0, v0, v3, v4}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;J)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 51
    :goto_6c
    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_79

    .line 52
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6c

    .line 54
    :cond_79
    invoke-virtual {v1}, Lorg/tukaani/xz/LZMAOutputStream;->finish()V

    .line 55
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
