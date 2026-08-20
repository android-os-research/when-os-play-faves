.class public final Lcom/android/server/knox/dar/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    .line 35
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_35

    .line 36
    :try_start_6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2b

    const/16 p1, 0x400

    :try_start_d
    new-array p1, p1, [B

    .line 40
    :goto_f
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_19

    .line 41
    invoke-virtual {p0, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_21

    goto :goto_f

    :cond_19
    const/4 v0, 0x1

    .line 44
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2b

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_35

    goto :goto_39

    :catchall_21
    move-exception p1

    .line 35
    :try_start_22
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p0

    :try_start_27
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p0

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception p1

    :try_start_31
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_35

    :catch_35
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_39
    return v0
.end method

.method public static exists(Ljava/io/File;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static exists(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 24
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {v0}, Lcom/android/server/knox/dar/FileUtil;->exists(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static getEncUserDir(I)Ljava/io/File;
    .registers 5

    .line 18
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "enc_user"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserSystemDir(I)Ljava/io/File;
    .registers 5

    .line 13
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
