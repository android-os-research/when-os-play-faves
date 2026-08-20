.class LXZDecDemo;
.super Ljava/lang/Object;
.source "XZDecDemo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17
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

    .line 23
    :try_start_8
    array-length v4, p0

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_22

    const-string v3, "standard input"

    .line 25
    new-instance p0, Lorg/tukaani/xz/XZInputStream;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, v4}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    :goto_16
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v5, :cond_af

    .line 29
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1, v6, v4}, Ljava/io/PrintStream;->write([BII)V

    goto :goto_16

    :cond_22
    move v4, v6

    .line 33
    :goto_23
    array-length v7, p0

    if-ge v4, v7, :cond_af

    .line 34
    aget-object v3, p0, v4

    .line 35
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_2d} :catch_8b
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_2d} :catch_71
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2d} :catch_4c

    .line 42
    :try_start_2d
    new-instance v8, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {v8, v7}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_47

    .line 45
    :goto_32
    :try_start_32
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v5, :cond_3e

    .line 46
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v1, v6, v7}, Ljava/io/PrintStream;->write([BII)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_44

    goto :goto_32

    .line 51
    :cond_3e
    :try_start_3e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :catchall_44
    move-exception p0

    move-object v7, v8

    goto :goto_48

    :catchall_47
    move-exception p0

    :goto_48
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 52
    throw p0
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_4c} :catch_8b
    .catch Ljava/io/EOFException; {:try_start_3e .. :try_end_4c} :catch_71
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception p0

    .line 66
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XZDecDemo: Error decompressing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_af

    .line 61
    :catch_71
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XZDecDemo: Unexpected end of input on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_af

    :catch_8b
    move-exception p0

    .line 56
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XZDecDemo: Cannot open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_af
    :goto_af
    return-void
.end method
