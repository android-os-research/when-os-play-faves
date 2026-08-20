.class LXZEncDemo;
.super Ljava/lang/Object;
.source "XZEncDemo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 24
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_13

    .line 25
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/tukaani/xz/LZMA2Options;->setPreset(I)V

    .line 27
    :cond_13
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoder memory usage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getEncoderMemoryUsage()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " KiB"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoder memory usage: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Lorg/tukaani/xz/LZMA2Options;->getDecoderMemoryUsage()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    new-instance p0, Lorg/tukaani/xz/XZOutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v1, v0}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 36
    :goto_5a
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_67

    .line 37
    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/XZOutputStream;->write([BII)V

    goto :goto_5a

    .line 39
    :cond_67
    invoke-virtual {p0}, Lorg/tukaani/xz/XZOutputStream;->finish()V

    return-void
.end method
