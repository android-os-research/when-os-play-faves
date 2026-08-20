.class Lcom/samsung/android/server/wifi/iwc/SemIWCFile;
.super Ljava/lang/Object;
.source "SemIWCFile.java"


# instance fields
.field protected mFile:Ljava/io/File;

.field protected mFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    .line 19
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFile:Ljava/io/File;

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->checkDirectoryAndCreateFile()Z

    return-void
.end method

.method private checkDirectoryAndCreateFile()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 50
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_1f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBufferedReader()Ljava/io/BufferedReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p0

    return-object p0
.end method

.method public getSize()J
    .registers 3

    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isFileExists()Z
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method readData()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    return-object p0
.end method

.method public readFile()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public writeData(Ljava/lang/String;)V
    .registers 6

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->checkDirectoryAndCreateFile()Z

    .line 82
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string v1, "UTF-8"

    .line 83
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    sget-object v3, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v0

    .line 82
    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_28} :catch_33
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_28} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_28} :catch_29

    goto :goto_37

    :catch_29
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_37

    :catch_2e
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_37

    :catch_33
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_37
    return-void
.end method

.method writeData([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->checkDirectoryAndCreateFile()Z

    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p1, v0}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    return-void
.end method

.method public writeDataAppend(Ljava/lang/String;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->checkDirectoryAndCreateFile()Z

    :try_start_3
    const-string v0, "UTF-8"

    .line 68
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 69
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v0

    invoke-static {p0, p1, v1}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_20} :catch_2b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_20} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_20} :catch_21

    goto :goto_2f

    :catch_21
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2f

    :catch_26
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_2f

    :catch_2b
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2f
    return-void
.end method
