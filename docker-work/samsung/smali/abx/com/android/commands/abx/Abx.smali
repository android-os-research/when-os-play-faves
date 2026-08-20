.class public Lcom/android/commands/abx/Abx;
.super Ljava/lang/Object;
.source "Abx.java"


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: abx2xml [-i] input [output]\nusage: xml2abx [-i] input [output]\n\nConverts between human-readable XML and Android Binary XML.\n\nWhen invoked with the \'-i\' argument, the output of a successful conversion\nwill overwrite the original input file. Input can be \'-\' to use stdin, and\noutput can be \'-\' to use stdout.\n"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-static {p0}, Lcom/android/commands/abx/Abx;->mainInternal([Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 117
    goto :goto_22

    .line 112
    :catch_8
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 115
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "usage: abx2xml [-i] input [output]\nusage: xml2abx [-i] input [output]\n\nConverts between human-readable XML and Android Binary XML.\n\nWhen invoked with the \'-i\' argument, the output of a successful conversion\nwill overwrite the original input file. Input can be \'-\' to use stdin, and\noutput can be \'-\' to use stdout.\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method private static mainInternal([Ljava/lang/String;)V
    .registers 10
    .param p0, "args"    # [Ljava/lang/String;

    .line 65
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d1

    .line 71
    const/4 v0, 0x0

    aget-object v2, p0, v0

    const-string v3, "abx2xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 72
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 73
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_2a

    .line 74
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_18
    aget-object v0, p0, v0

    const-string v2, "xml2abx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 75
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 76
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 81
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_2a
    const/4 v3, 0x1

    aget-object v4, p0, v3

    const-string v5, "-i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 82
    .local v4, "inPlace":Z
    if-eqz v4, :cond_38

    aget-object v5, p0, v1

    goto :goto_3a

    :cond_38
    aget-object v5, p0, v3

    .line 83
    .local v5, "inputArg":Ljava/lang/String;
    :goto_3a
    if-eqz v4, :cond_52

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p0, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".tmp"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    :cond_52
    aget-object v1, p0, v1

    .line 85
    .local v1, "outputArg":Ljava/lang/String;
    :goto_54
    :try_start_54
    invoke-static {v5}, Lcom/android/commands/abx/Abx;->openInput(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_58} :catch_b8

    .line 86
    .local v6, "is":Ljava/io/InputStream;
    :try_start_58
    invoke-static {v1}, Lcom/android/commands/abx/Abx;->openOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v7
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_ac

    .line 87
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_5c
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 88
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 89
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 90
    invoke-static {v0, v2}, Landroid/util/Xml;->copy(Lorg/xmlpull/v1/XmlPullParser;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 91
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_79
    .catchall {:try_start_5c .. :try_end_79} :catchall_a0

    .line 92
    if-eqz v7, :cond_7e

    :try_start_7b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_ac

    .end local v7    # "os":Ljava/io/OutputStream;
    :cond_7e
    if-eqz v6, :cond_83

    :try_start_80
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_b8

    .line 98
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_83
    nop

    .line 101
    if-eqz v4, :cond_9f

    .line 102
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_97

    goto :goto_9f

    .line 103
    :cond_97
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "Failed rename"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_9f
    :goto_9f
    return-void

    .line 85
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :catchall_a0
    move-exception v3

    if-eqz v7, :cond_ab

    :try_start_a3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v8

    :try_start_a8
    invoke-virtual {v3, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "outputArg":Ljava/lang/String;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "inPlace":Z
    .end local v5    # "inputArg":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local p0    # "args":[Ljava/lang/String;
    :cond_ab
    :goto_ab
    throw v3
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_ac

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1    # "outputArg":Ljava/lang/String;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "inPlace":Z
    .restart local v5    # "inputArg":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_ac
    move-exception v3

    if-eqz v6, :cond_b7

    :try_start_af
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b7

    :catchall_b3
    move-exception v7

    :try_start_b4
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "outputArg":Ljava/lang/String;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "inPlace":Z
    .end local v5    # "inputArg":Ljava/lang/String;
    .end local p0    # "args":[Ljava/lang/String;
    :cond_b7
    :goto_b7
    throw v3
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b8} :catch_b8

    .line 92
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1    # "outputArg":Ljava/lang/String;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "inPlace":Z
    .restart local v5    # "inputArg":Ljava/lang/String;
    .restart local p0    # "args":[Ljava/lang/String;
    :catch_b8
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_c3

    .line 95
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 97
    :cond_c3
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 78
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "outputArg":Ljava/lang/String;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "inPlace":Z
    .end local v5    # "inputArg":Ljava/lang/String;
    :cond_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported conversion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static openInput(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2
    .param p0, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    return-object v0

    .line 52
    :cond_b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static openOutput(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-object v0

    .line 60
    :cond_b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
