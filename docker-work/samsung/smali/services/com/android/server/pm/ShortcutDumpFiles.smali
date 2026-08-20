.class public Lcom/android/server/pm/ShortcutDumpFiles;
.super Ljava/lang/Object;
.source "ShortcutDumpFiles.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field public final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public static synthetic $r8$lambda$6zzwCxGtb3essvELzzOC7K7h-Gc(Ljava/io/File;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutDumpFiles;->lambda$dumpAll$1(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h1i4W_R9vmQsm2yaAuZluGHj9og([BLjava/io/PrintWriter;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->lambda$save$0([BLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pGG0rowFI37DIvF9-khNJsT-nLM(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutDumpFiles;->lambda$dumpAll$2(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    return-void
.end method

.method public static synthetic lambda$dumpAll$1(Ljava/io/File;)Z
    .registers 1

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$dumpAll$2(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$save$0([BLjava/io/PrintWriter;)V
    .registers 3

    .line 72
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 8

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object p0

    .line 79
    new-instance v0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_74

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_74

    .line 84
    :cond_1c
    new-instance p0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 86
    array-length p0, v0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, p0, :cond_82

    aget-object v2, v0, v1

    const-string v3, "*** Dumping: "

    .line 87
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "mtime: "

    .line 90
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5a} :catch_7a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5a} :catch_7a

    .line 96
    :goto_5a
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 97
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_6a

    goto :goto_5a

    .line 99
    :cond_64
    :try_start_64
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_67} :catch_7a
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_7a

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :catchall_6a
    move-exception p0

    .line 93
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception p1

    :try_start_70
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_73
    throw p0

    :cond_74
    :goto_74
    const-string p0, "  No dump files found."

    .line 81
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_79} :catch_7a
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    move-exception p0

    const-string p1, "ShortcutService"

    const-string v0, "Failed to print dump files"

    .line 102
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_82
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/io/PrintWriter;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ShortcutService"

    const/4 v1, 0x0

    .line 47
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 54
    :cond_27
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    new-instance p0, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3b} :catch_4d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3b} :catch_4d

    .line 62
    :try_start_3b
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_43

    .line 63
    :try_start_3e
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_41} :catch_4d
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4d

    const/4 p0, 0x1

    return p0

    :catchall_43
    move-exception p2

    .line 60
    :try_start_44
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception p0

    :try_start_49
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw p2
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4d} :catch_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception p0

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create dump file: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public save(Ljava/lang/String;[B)Z
    .registers 4

    .line 72
    new-instance v0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method
