.class public Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "CertificateTransparencyLogInstallReceiver.java"


# static fields
.field public static final LOGDIR_PREFIX:Ljava/lang/String; = "logs-"

.field public static final TAG:Ljava/lang/String; = "CTLogInstallReceiver"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "/data/misc/keychain/trusted_ct_logs/"

    const-string v1, "ct_logs"

    const-string v2, "metadata/"

    const-string/jumbo v3, "version"

    .line 50
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final deleteOldLogDirectories()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 177
    :cond_9
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;-><init>(Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;Ljava/io/File;)V

    .line 184
    iget-object p0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_2d

    aget-object v2, p0, v1

    .line 185
    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2d
    return-void
.end method

.method public final getLogFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    .line 158
    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    :try_start_5
    const-string v0, "SHA-256"

    .line 160
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 161
    invoke-static {p1, p0}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 164
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public install(Ljava/io/InputStream;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 63
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Unable to make directory "

    if-eqz v0, :cond_15e

    .line 66
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const-string v5, "current"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logs-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 79
    iget-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    int-to-long v2, p2

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 79
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    return-void

    .line 84
    :cond_6b
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 89
    :cond_6e
    :try_start_6e
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 90
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_123

    .line 93
    invoke-virtual {v4, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7b} :catch_13c
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_7b} :catch_13c

    if-eqz v1, :cond_103

    .line 100
    :try_start_7d
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 101
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "logs"

    .line 102
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 103
    :goto_93
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_a3

    .line 104
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 105
    invoke-virtual {p0, v4, v1}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->installLog(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_a0
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_a0} :catch_fa
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_a0} :catch_13c
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_a0} :catch_13c

    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 113
    :cond_a3
    :try_start_a3
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "new_symlink"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ac} :catch_13c
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_ac} :catch_13c

    .line 115
    :try_start_ac
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b7
    .catch Landroid/system/ErrnoException; {:try_start_ac .. :try_end_b7} :catch_f1
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b7} :catch_13c
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_b7} :catch_13c

    .line 121
    :try_start_b7
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_be} :catch_13c
    .catch Ljava/lang/RuntimeException; {:try_start_b7 .. :try_end_be} :catch_13c

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CT log directory updated to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CTLogInstallReceiver"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    int-to-long v2, p2

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 128
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    return-void

    :catch_f1
    move-exception p0

    .line 117
    :try_start_f2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create symlink"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_fa
    move-exception p0

    .line 108
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to parse logs"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 94
    :cond_103
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " readable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_123
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_13c} :catch_13c
    .catch Ljava/lang/RuntimeException; {:try_start_f2 .. :try_end_13c} :catch_13c

    :catch_13c
    move-exception p0

    .line 123
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 124
    throw p0

    .line 67
    :cond_141
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to set permissions on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_15e
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final installLog(Ljava/io/File;Lorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "description"

    const-string/jumbo v1, "url"

    const-string v2, "key"

    .line 136
    :try_start_7
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->getLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_66

    .line 140
    :try_start_20
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_5c

    .line 143
    :try_start_35
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 144
    invoke-virtual {v4, p0, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p0

    if-eqz p0, :cond_41

    return-void

    .line 145
    :cond_41
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set permissions on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_5c} :catch_66

    :catchall_5c
    move-exception p0

    .line 138
    :try_start_5d
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
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
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    move-exception p0

    .line 148
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to parse log"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method
