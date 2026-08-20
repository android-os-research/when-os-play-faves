.class public Landroid/sec/clipboard/util/CompatabilityHelper;
.super Ljava/lang/Object;
.source "CompatabilityHelper.java"


# static fields
.field private static final blacklist MAX_SECOND_USER_ID:I = 0xc8

.field private static final blacklist MIN_SECOND_USER_ID:I = 0xa

.field public static final blacklist OLD_CLIPBOARD_ROOT_PATH:Ljava/lang/String; = "/data/clipboard"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const-class v0, Landroid/sec/clipboard/util/CompatabilityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist copyClipboardDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "process":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "targetDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "srcDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 83
    .local v3, "srcDirlistFiles":[Ljava/io/File;
    if-eqz v3, :cond_21

    array-length v4, v3

    if-lez v4, :cond_21

    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-static {v2, v1}, Landroid/sec/clipboard/util/CompatabilityHelper;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 86
    invoke-static {v2}, Landroid/sec/clipboard/util/CompatabilityHelper;->recursiveDelete(Ljava/io/File;)V

    .line 90
    .end local v3    # "srcDirlistFiles":[Ljava/io/File;
    :cond_21
    if-eqz v0, :cond_46

    .line 91
    sget-object v3, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "migration progressed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_46
    return-void
.end method

.method private static blacklist copyDir(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    if-eqz v0, :cond_37

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 98
    invoke-static {p1, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 100
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v2, v0

    if-ge v1, v2, :cond_36

    .line 103
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/CompatabilityHelper;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 106
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_36
    goto :goto_8c

    .line 107
    :cond_37
    :try_start_37
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_6f

    .line 108
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_3c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_65

    .line 109
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    :try_start_43
    new-array v4, v4, [B

    .line 111
    .local v4, "buf":[B
    :goto_45
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "len":I
    if-lez v5, :cond_51

    .line 112
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_45

    .line 114
    :cond_51
    invoke-static {p1, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_5b

    .line 115
    .end local v4    # "buf":[B
    .end local v6    # "len":I
    :try_start_54
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_65

    .end local v3    # "out":Ljava/io/FileOutputStream;
    :try_start_57
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_6f

    .line 117
    .end local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_8c

    .line 107
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_5b
    move-exception v1

    :try_start_5c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v2

    :try_start_61
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dest":Ljava/io/File;
    :goto_64
    throw v1
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_65

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dest":Ljava/io/File;
    :catchall_65
    move-exception v1

    :try_start_66
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception v2

    :try_start_6b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dest":Ljava/io/File;
    :goto_6e
    throw v1
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_6f

    .line 115
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dest":Ljava/io/File;
    :catch_6f
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyDir failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8c
    return-void
.end method

.method public static blacklist getRootPathForMultiUser(I)Ljava/lang/String;
    .registers 3
    .param p0, "cat"    # I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/semclipboard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v1, p0, -0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist migrationClipboard()V
    .registers 5

    .line 46
    const-string v0, "/data/clipboard"

    const-string v1, "/data/semclipboard"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/CompatabilityHelper;->copyClipboardDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/16 v1, 0xa

    .local v1, "i":I
    :goto_9
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_37

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/semclipboard/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/CompatabilityHelper;->copyClipboardDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 52
    .end local v1    # "i":I
    :cond_37
    return-void
.end method

.method public static blacklist recursiveDelete(Ljava/io/File;)V
    .registers 5
    .param p0, "rootDir"    # Ljava/io/File;

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, "childDirs":[Ljava/io/File;
    if-eqz v0, :cond_2a

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_2a

    .line 58
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 59
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_27

    .line 60
    sget-object v2, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed to delete."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 63
    :cond_22
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/sec/clipboard/util/CompatabilityHelper;->recursiveDelete(Ljava/io/File;)V

    .line 57
    :cond_27
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 69
    .end local v1    # "i":I
    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/clipboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/semclipboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 71
    sget-object v1, Landroid/sec/clipboard/util/CompatabilityHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to delete root ."

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_4f
    return-void
.end method

.method public static blacklist replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "original"    # Ljava/lang/String;

    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_4
    const-string v0, ""

    .line 32
    .local v0, "result":Ljava/lang/String;
    const-string v1, "/data/clipboard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 33
    const-string v2, "/data/clipboard/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 34
    const-string v2, "/data/semclipboard"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 36
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/semclipboard/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_38
    return-object v0

    .line 40
    :cond_39
    return-object p0
.end method
