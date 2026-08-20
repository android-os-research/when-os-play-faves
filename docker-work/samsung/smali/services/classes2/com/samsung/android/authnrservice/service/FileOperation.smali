.class public final Lcom/samsung/android/authnrservice/service/FileOperation;
.super Ljava/lang/Object;
.source "FileOperation.java"


# static fields
.field public static final BASE_PATH:Ljava/lang/String; = "/data/.fido/"

.field public static final TAG:Ljava/lang/String; = "FO"

.field public static mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/FileOperation;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Lcom/samsung/android/authnrservice/service/FileOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/FileOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;

    .line 47
    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized deleteFile(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "FO"

    const-string v1, "deleteFile"

    .line 90
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/.fido/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->deleteFileRec(Ljava/lang/String;)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return p1

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized deleteFileRec(Ljava/lang/String;)Z
    .registers 11

    monitor-enter p0

    .line 97
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    const-string p1, "FO"

    const-string v0, "file not exist"

    .line 100
    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_ad

    .line 101
    monitor-exit p0

    return v2

    .line 104
    :cond_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_2d
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 109
    array-length v3, v1

    if-lez v3, :cond_a7

    .line 110
    array-length v3, v1

    move v4, v2

    :goto_38
    if-ge v4, v3, :cond_a7

    aget-object v5, v1, v4

    .line 111
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 114
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/authnrservice/service/FileOperation;->deleteFileRec(Ljava/lang/String;)Z

    move-result v5
    :try_end_5e
    .catchall {:try_start_16 .. :try_end_5e} :catchall_ad

    if-nez v5, :cond_88

    .line 116
    monitor-exit p0

    return v2

    .line 121
    :cond_62
    :try_start_62
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 122
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_88

    const-string v5, "FO"

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleting file failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_8b
    const-string p1, "FO"

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleting file failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_62 .. :try_end_a5} :catchall_ad

    .line 128
    monitor-exit p0

    return v2

    .line 133
    :cond_a7
    :try_start_a7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_ad

    .line 135
    monitor-exit p0

    return p1

    :catchall_ad
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "FO"

    const-string v1, "getFiles"

    .line 139
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/.fido/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesRec(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getFilesPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "FO"

    if-nez v2, :cond_1c

    const-string p0, "file not exist"

    .line 270
    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 274
    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v4, "/"

    if-nez v2, :cond_4a

    .line 275
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_35

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_35
    const/16 p0, 0xc

    .line 278
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x1

    .line 280
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 282
    :cond_46
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 286
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8e

    .line 288
    array-length v2, v1

    if-nez v2, :cond_63

    goto :goto_8e

    .line 292
    :cond_63
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 294
    array-length v2, v1

    const/4 v3, 0x0

    :goto_68
    if-ge v3, v2, :cond_8d

    aget-object v4, v1, v3

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 297
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    :cond_8d
    return-object v0

    :cond_8e
    :goto_8e
    const-string p0, "children paths not exist"

    .line 289
    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFilesRec(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "IOE 2"

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "FO"

    if-nez v3, :cond_1a

    const-string p0, "file not exist"

    .line 151
    invoke-static {v4, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 155
    :cond_1a
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_46

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 158
    array-length v3, v2

    if-nez v3, :cond_3c

    goto :goto_40

    .line 162
    :cond_3c
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_4b

    :cond_40
    :goto_40
    const-string p0, "children paths not exist"

    .line 159
    invoke-static {v4, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_46
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 168
    :goto_4b
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 169
    array-length v3, v2

    move v6, v5

    :goto_51
    if-ge v6, v3, :cond_16a

    aget-object v7, v2, v6

    .line 170
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_84

    .line 172
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesRec(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_109

    .line 173
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_109

    .line 174
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_109

    :cond_84
    if-eqz p2, :cond_98

    .line 179
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_98

    invoke-virtual {v7, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_98

    const-string v7, "continue"

    .line 180
    invoke-static {v4, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_109

    :cond_98
    const/4 v8, 0x0

    .line 186
    :try_start_99
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_ad} :catch_115
    .catchall {:try_start_99 .. :try_end_ad} :catchall_113

    .line 187
    :try_start_ad
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v7, v10

    .line 189
    new-array v10, v7, [B

    .line 190
    invoke-virtual {v9, v10, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 191
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    if-eq v7, v8, :cond_ee

    .line 193
    invoke-static {v10}, Lcom/samsung/android/authnrservice/service/Encoding$Base64;->encode([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_ee} :catch_110
    .catchall {:try_start_ad .. :try_end_ee} :catchall_10d

    .line 200
    :cond_ee
    :try_start_ee
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    goto :goto_109

    :catch_f2
    move-exception v7

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_109
    :goto_109
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_51

    :catchall_10d
    move-exception p0

    move-object v8, v9

    goto :goto_14c

    :catch_110
    move-exception p0

    move-object v8, v9

    goto :goto_116

    :catchall_113
    move-exception p0

    goto :goto_14c

    :catch_115
    move-exception p0

    .line 195
    :goto_116
    :try_start_116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IOE 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12e
    .catchall {:try_start_116 .. :try_end_12e} :catchall_113

    if-eqz v8, :cond_14b

    .line 200
    :try_start_130
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_134

    goto :goto_14b

    :catch_134
    move-exception p0

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14b
    :goto_14b
    return-object v1

    :goto_14c
    if-eqz v8, :cond_169

    .line 200
    :try_start_14e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_152

    goto :goto_169

    :catch_152
    move-exception p1

    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_169
    :goto_169
    throw p0

    :cond_16a
    return-object v1
.end method

.method public getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "FO"

    const-string v1, "getMatchedFilePaths"

    .line 253
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-nez p1, :cond_d

    move-object p1, v0

    goto :goto_11

    .line 254
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_11
    const-string v1, "/"

    .line 255
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/.fido/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_38

    goto :goto_3c

    .line 260
    :cond_38
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_3c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string p0, "IOE 2"

    const-string v0, "FO"

    const-string/jumbo v1, "readFile"

    .line 212
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/.fido/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2e

    const-string p0, "file not exist"

    .line 218
    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 222
    :cond_2e
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string p0, "file is a directory"

    .line 223
    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3a
    const/4 v2, 0x0

    .line 230
    :try_start_3b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_8f
    .catchall {:try_start_3b .. :try_end_40} :catchall_8d

    .line 231
    :try_start_40
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int p1, v5

    .line 232
    new-array v2, p1, [B

    const/4 v5, 0x0

    .line 233
    invoke-virtual {v4, v2, v5, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6b

    .line 236
    invoke-static {v2}, Lcom/samsung/android/authnrservice/service/Encoding$Base64;->encode([B)Ljava/lang/String;

    move-result-object v3
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_6b} :catch_8a
    .catchall {:try_start_40 .. :try_end_6b} :catchall_87

    .line 242
    :cond_6b
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_b5

    :catch_6f
    move-exception p1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b5

    :catchall_87
    move-exception p1

    move-object v2, v4

    goto :goto_b6

    :catch_8a
    move-exception p1

    move-object v2, v4

    goto :goto_90

    :catchall_8d
    move-exception p1

    goto :goto_b6

    :catch_8f
    move-exception p1

    .line 238
    :goto_90
    :try_start_90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOE 1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_90 .. :try_end_a8} :catchall_8d

    if-eqz v2, :cond_b5

    .line 242
    :try_start_aa
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_b5

    :catch_ae
    move-exception p1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_75

    :cond_b5
    :goto_b5
    return-object v3

    :goto_b6
    if-eqz v2, :cond_d3

    .line 242
    :try_start_b8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_d3

    :catch_bc
    move-exception v1

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_d3
    :goto_d3
    throw p1
.end method

.method public declared-synchronized writeFile([BLjava/lang/String;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "FO"

    const-string/jumbo v1, "writeFile"

    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/.fido/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string p1, "FO"

    const-string p2, "invalid path"

    .line 58
    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_e9

    .line 59
    monitor-exit p0

    return v1

    .line 62
    :cond_39
    :try_start_39
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_53

    const-string p1, "FO"

    const-string p2, "mkdirs failed"

    .line 64
    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_e9

    .line 65
    monitor-exit p0

    return v1

    :cond_53
    const/4 v0, 0x0

    .line 70
    :try_start_54
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_89
    .catchall {:try_start_54 .. :try_end_59} :catchall_87

    .line 71
    :try_start_59
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 72
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5f} :catch_84
    .catchall {:try_start_59 .. :try_end_5f} :catchall_81

    .line 79
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_e9

    goto :goto_7e

    :catch_63
    move-exception p1

    :try_start_64
    const-string p2, "FO"

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOE 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_64 .. :try_end_7e} :catchall_e9

    :goto_7e
    const/4 p1, 0x1

    .line 86
    monitor-exit p0

    return p1

    :catchall_81
    move-exception p1

    move-object v0, v2

    goto :goto_c7

    :catch_84
    move-exception p1

    move-object v0, v2

    goto :goto_8a

    :catchall_87
    move-exception p1

    goto :goto_c7

    :catch_89
    move-exception p1

    :goto_8a
    :try_start_8a
    const-string p2, "FO"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOE 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_8a .. :try_end_a4} :catchall_87

    if-eqz v0, :cond_c5

    .line 79
    :try_start_a6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_e9

    goto :goto_c5

    :catch_aa
    move-exception p1

    :try_start_ab
    const-string p2, "FO"

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOE 2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_ab .. :try_end_c5} :catchall_e9

    .line 75
    :cond_c5
    :goto_c5
    monitor-exit p0

    return v1

    :goto_c7
    if-eqz v0, :cond_e8

    .line 79
    :try_start_c9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_e9

    goto :goto_e8

    :catch_cd
    move-exception p2

    :try_start_ce
    const-string v0, "FO"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOE 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_e8
    :goto_e8
    throw p1
    :try_end_e9
    .catchall {:try_start_ce .. :try_end_e9} :catchall_e9

    :catchall_e9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
