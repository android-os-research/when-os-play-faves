.class public Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;
.super Ljava/lang/Object;
.source "Pack200Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalize(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, p0, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method

.method public static normalize(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method

.method public static normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_7

    .line 130
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_7
    const-string v0, "pack.segment.limit"

    const-string v1, "-1"

    .line 132
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "commons-compress"

    const-string v1, "pack200normalize"

    .line 133
    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 135
    :try_start_16
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_70

    .line 136
    :try_start_1b
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_66

    .line 137
    :try_start_20
    invoke-static {}, Ljava/util/jar/Pack200;->newPacker()Ljava/util/jar/Pack200$Packer;

    move-result-object p0

    .line 138
    invoke-interface {p0}, Ljava/util/jar/Pack200$Packer;->properties()Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 139
    invoke-interface {p0, v2, v1}, Ljava/util/jar/Pack200$Packer;->pack(Ljava/util/jar/JarFile;Ljava/io/OutputStream;)V
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_5c

    .line 140
    :try_start_2e
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_66

    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 141
    invoke-static {}, Ljava/util/jar/Pack200;->newUnpacker()Ljava/util/jar/Pack200$Unpacker;

    move-result-object p0

    .line 142
    new-instance p2, Ljava/util/jar/JarOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_70

    .line 143
    :try_start_42
    invoke-interface {p0, v0, p2}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_52

    .line 144
    :try_start_45
    invoke-virtual {p2}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_70

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_51

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_51
    return-void

    :catchall_52
    move-exception p0

    .line 142
    :try_start_53
    invoke-virtual {p2}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p1

    :try_start_58
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw p0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_70

    :catchall_5c
    move-exception p0

    .line 135
    :try_start_5d
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p1

    :try_start_62
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw p0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p0

    :try_start_67
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception p1

    :try_start_6c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6f
    throw p0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_7a

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 149
    :cond_7a
    throw p0
.end method

.method public static normalize(Ljava/io/File;Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p0, p0, p1}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method
