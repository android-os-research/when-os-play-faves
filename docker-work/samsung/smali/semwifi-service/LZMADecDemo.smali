.class LLZMADecDemo;
.super Ljava/lang/Object;
.source "LZMADecDemo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11

    const-string v0, ": "

    const/16 v1, 0x2000

    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 26
    :try_start_8
    array-length v4, p0

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_22

    const-string v3, "standard input"

    .line 31
    new-instance p0, Lorg/tukaani/xz/LZMAInputStream;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, v4}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    :goto_16
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v5, :cond_b4

    .line 35
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1, v6, v4}, Ljava/io/PrintStream;->write([BII)V

    goto :goto_16

    :cond_22
    move v4, v6

    .line 39
    :goto_23
    array-length v7, p0

    if-ge v4, v7, :cond_b4

    .line 40
    aget-object v3, p0, v4

    .line 41
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_2d} :catch_90
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_2d} :catch_76
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2d} :catch_51

    .line 50
    :try_start_2d
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_4c

    .line 51
    :try_start_32
    new-instance v7, Lorg/tukaani/xz/LZMAInputStream;

    invoke-direct {v7, v8}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_49

    .line 54
    :goto_37
    :try_start_37
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eq v8, v5, :cond_43

    .line 55
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v1, v6, v8}, Ljava/io/PrintStream;->write([BII)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_4c

    goto :goto_37

    .line 60
    :cond_43
    :try_start_43
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :catchall_49
    move-exception p0

    move-object v7, v8

    goto :goto_4d

    :catchall_4c
    move-exception p0

    :goto_4d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 61
    throw p0
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_51} :catch_90
    .catch Ljava/io/EOFException; {:try_start_43 .. :try_end_51} :catch_76
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_51} :catch_51

    :catch_51
    move-exception p0

    .line 75
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LZMADecDemo: Error decompressing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_b4

    .line 70
    :catch_76
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LZMADecDemo: Unexpected end of input on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_b4

    :catch_90
    move-exception p0

    .line 65
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LZMADecDemo: Cannot open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_b4
    :goto_b4
    return-void
.end method
