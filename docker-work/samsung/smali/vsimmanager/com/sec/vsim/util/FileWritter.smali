.class public Lcom/sec/vsim/util/FileWritter;
.super Ljava/lang/Object;
.source "FileWritter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/sec/vsim/util/FileWritter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "filePathName"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "fileName":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/sec/vsim/util/FileWritter;->initFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private initFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "path":Ljava/io/File;
    const-string v1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 26
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 27
    sget-object v2, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFile: filePath ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_3c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 32
    sget-object v2, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "initFile: path created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_4c
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_83

    .line 39
    :try_start_6e
    iget-object v1, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 40
    sget-object v1, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initFile: file created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7d} :catch_7e

    goto :goto_82

    .line 42
    :catch_7e
    move-exception v1

    .line 43
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    .end local v1    # "e":Ljava/io/IOException;
    :cond_82
    :goto_82
    goto :goto_8a

    .line 46
    :cond_83
    sget-object v1, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initFile: file already existed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_8a
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 57
    sget-object v0, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "write: file does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v1

    .line 61
    :cond_d
    const/4 v0, 0x0

    .line 63
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_e
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 64
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 67
    sget-object v2, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "write: file write complete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_28} :catch_45
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_28} :catch_35
    .catchall {:try_start_e .. :try_end_28} :catchall_33

    .line 68
    const/4 v1, 0x1

    .line 76
    nop

    .line 77
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 81
    goto :goto_32

    .line 79
    :catch_2e
    move-exception v2

    .line 80
    .local v2, "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .end local v2    # "ie":Ljava/io/IOException;
    :goto_32
    return v1

    .line 75
    :catchall_33
    move-exception v1

    goto :goto_50

    .line 72
    :catch_35
    move-exception v2

    .line 73
    .local v2, "e":Ljava/io/IOException;
    :try_start_36
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_33

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_44

    .line 77
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_44

    .line 79
    :catch_3f
    move-exception v2

    .line 80
    .local v2, "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v2    # "ie":Ljava/io/IOException;
    goto :goto_4f

    .line 81
    :cond_44
    :goto_44
    goto :goto_4f

    .line 70
    :catch_45
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_33

    .line 76
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_44

    .line 77
    :try_start_4b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_3f

    goto :goto_44

    .line 83
    :goto_4f
    return v1

    .line 76
    :goto_50
    if-eqz v0, :cond_5b

    .line 77
    :try_start_52
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5b

    .line 79
    :catch_56
    move-exception v2

    .line 80
    .local v2, "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    .line 81
    .end local v2    # "ie":Ljava/io/IOException;
    :cond_5b
    :goto_5b
    nop

    .line 82
    :goto_5c
    throw v1
.end method
