.class public Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
.super Ljava/lang/Object;
.source "ExecSystemDataMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field public static final BUFFER_SIZE:I = 0x400

.field public static final TAG:Ljava/lang/String; = "ExecSystemDataMgr"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static changeFilePermission(Ljava/io/File;)V
    .registers 6

    const-string v0, "ExecSystemDataMgr"

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    :try_start_7
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "setReadable() failed"

    new-array v4, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v0, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    :cond_15
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3

    if-nez v3, :cond_23

    const-string/jumbo v3, "setWritable() failed"

    new-array v4, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {v0, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    :cond_23
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v1

    if-nez v1, :cond_54

    const-string/jumbo v1, "setExecutable() failed"

    new-array v3, v2, [Ljava/lang/Object;

    .line 47
    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_31} :catch_32

    goto :goto_54

    :catch_32
    move-exception v1

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to change a permission of file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    return-void
.end method


# virtual methods
.method public final copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z
    .registers 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExecSystemDataMgr"

    const-string v3, "copyPackageAssetsToSysDir"

    .line 151
    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez p1, :cond_d

    return v0

    :cond_d
    const-string/jumbo v1, "paramStr0"

    .line 157
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "paramList0"

    .line 158
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c3

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_c3

    .line 165
    :cond_2b
    iget-object v3, p0, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_3b

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "getPackageManager() failed"

    .line 167
    invoke-static {v2, p1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    :cond_3b
    const/16 v4, 0x80

    .line 172
    :try_start_3d
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_4b

    const-string p0, "getApplicationInfo() failed"

    new-array p1, v0, [Ljava/lang/Object;

    .line 174
    invoke-static {v2, p0, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    .line 178
    :cond_4b
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 179
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_5d

    const-string p0, "getResourcesForApplication() failed"

    new-array p1, v0, [Ljava/lang/Object;

    .line 181
    invoke-static {v2, p0, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    .line 185
    :cond_5d
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    if-nez v1, :cond_6b

    const-string p0, "getAssets() failed"

    new-array p1, v0, [Ljava/lang/Object;

    .line 187
    invoke-static {v2, p0, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    .line 191
    :cond_6b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6f
    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_bd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ";"

    .line 192
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 193
    aget-object v6, v5, v0

    .line 194
    aget-object v4, v5, v4

    new-array v5, v0, [Ljava/lang/Object;

    .line 196
    invoke-static {v2, v3, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_8f
    .catchall {:try_start_3d .. :try_end_8f} :catchall_be

    .line 199
    :try_start_8f
    invoke-virtual {p0, v3, v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->createFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ab

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_ab
    .catchall {:try_start_8f .. :try_end_ab} :catchall_b1

    :cond_ab
    if-eqz v3, :cond_6f

    .line 202
    :try_start_ad
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_be

    goto :goto_6f

    :catchall_b1
    move-exception p0

    if-eqz v3, :cond_bc

    .line 198
    :try_start_b4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    goto :goto_bc

    :catchall_b8
    move-exception p1

    :try_start_b9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_bc
    :goto_bc
    throw p0
    :try_end_bd
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_be

    :cond_bd
    return v4

    :catchall_be
    move-exception p0

    .line 207
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    return v0

    :cond_c3
    :goto_c3
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "arguments wrong!"

    .line 161
    invoke-static {v2, p1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method public final createFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 7

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "ExecSystemDataMgr"

    const-string v2, "createFile"

    .line 85
    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    :try_start_f
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_3d
    .catchall {:try_start_f .. :try_end_14} :catchall_3b

    const/16 v1, 0x400

    :try_start_16
    new-array v1, v1, [B

    .line 94
    :goto_18
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    .line 95
    invoke-virtual {p2, v1, p0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_31

    goto :goto_18

    :cond_23
    const/4 p0, 0x1

    .line 99
    :try_start_24
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_3d
    .catchall {:try_start_24 .. :try_end_27} :catchall_3b

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 103
    :goto_2d
    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_4a

    :catchall_31
    move-exception p1

    .line 90
    :try_start_32
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p2

    :try_start_37
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3a
    throw p1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_3d
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p1

    goto :goto_4b

    :catch_3d
    move-exception p1

    .line 100
    :try_start_3e
    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    if-eqz p0, :cond_4a

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4a

    goto :goto_2d

    :cond_4a
    :goto_4a
    return p0

    :goto_4b
    if-eqz p0, :cond_56

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_56

    .line 103
    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    .line 105
    :cond_56
    throw p1
.end method

.method public final deleteFiles(Landroid/os/Bundle;)Z
    .registers 11

    const-string/jumbo p0, "paramStrA0"

    .line 113
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 115
    array-length p1, p0

    goto :goto_c

    :cond_b
    const/4 p1, -0x1

    :goto_c
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ExecSystemDataMgr"

    const-string v4, "deleteFiles %d"

    invoke-static {v2, v4, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-lez p1, :cond_ab

    .line 120
    array-length v1, p0

    move v4, v3

    move v5, v4

    :goto_22
    if-ge v4, v1, :cond_ac

    aget-object v6, p0, v4

    if-eqz v6, :cond_a7

    .line 121
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_a7

    const-string v7, "/data/system/friends"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_a7

    .line 125
    :cond_37
    :try_start_37
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5e

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wrong filePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_a7

    .line 131
    :cond_5e
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_7f

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is a directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_a7

    .line 136
    :cond_7f
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_a0

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to delete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9f
    .catchall {:try_start_37 .. :try_end_9f} :catchall_a3

    goto :goto_a7

    :cond_a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_a7

    :catchall_a3
    move-exception v6

    .line 142
    invoke-static {v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_a7
    :goto_a7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    :cond_ab
    move v5, v3

    :cond_ac
    if-eqz v5, :cond_b1

    if-ne v5, p1, :cond_b1

    goto :goto_b2

    :cond_b1
    move v0, v3

    :goto_b2
    return v0
.end method

.method public final deleteRecursive(Ljava/io/File;)V
    .registers 7

    .line 216
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 218
    array-length v2, v0

    if-lez v2, :cond_1f

    .line 219
    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    if-nez v4, :cond_19

    goto :goto_1c

    .line 223
    :cond_19
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 228
    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_33

    const-string p0, "ExecSystemDataMgr"

    const-string p1, "failed to delete a file or a directory!"

    new-array v0, v1, [Ljava/lang/Object;

    .line 229
    invoke-static {p0, p1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p0

    .line 232
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public final deleteSubDirs(Landroid/os/Bundle;)Z
    .registers 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExecSystemDataMgr"

    const-string v3, "deleteSubDirs"

    .line 237
    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v1, "paramStr0"

    const/4 v3, 0x0

    .line 239
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "paramStr1"

    .line 240
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "data is wrong!"

    .line 243
    invoke-static {v2, p1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    .line 251
    :cond_27
    :try_start_27
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string/jumbo p0, "target is not a directory!"

    new-array p1, v0, [Ljava/lang/Object;

    .line 253
    invoke-static {v2, p0, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    .line 257
    :cond_3b
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 258
    array-length v2, v1

    if-lez v2, :cond_60

    .line 259
    array-length v2, v1

    move v3, v0

    :goto_46
    if-ge v3, v2, :cond_60

    aget-object v4, v1, v3

    .line 260
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_5d

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5d

    .line 261
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V
    :try_end_5d
    .catchall {:try_start_27 .. :try_end_5d} :catchall_62

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_60
    const/4 v0, 0x1

    goto :goto_66

    :catchall_62
    move-exception p0

    .line 268
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_66
    return v0
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 6

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "ExecSystemDataMgr"

    const-string v1, "ActionSystemDataMgr"

    .line 57
    invoke-static {v0, v1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_47

    const p2, 0x120013

    if-eq p3, p2, :cond_3e

    packed-switch p3, :pswitch_data_4a

    goto :goto_47

    .line 74
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 71
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->writeStringToFile(Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 65
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteSubDirs(Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 68
    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 62
    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->makeDir(Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 77
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteFiles(Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_47
    :goto_47
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x12000b
        :pswitch_35
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public final makeDir(Landroid/os/Bundle;)Z
    .registers 5

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "ExecSystemDataMgr"

    const-string v2, "makeDir"

    .line 275
    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-array p1, p0, [Ljava/lang/Object;

    const-string v0, "data is wrong!"

    .line 281
    invoke-static {v1, v0, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return p0

    .line 286
    :cond_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    :try_start_25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create a path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, p0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4b} :catch_59
    .catchall {:try_start_25 .. :try_end_4b} :catchall_57

    return p0

    :cond_4c
    const/4 p0, 0x1

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 298
    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_5d

    :catchall_57
    move-exception p0

    goto :goto_5e

    :catch_59
    move-exception p1

    .line 295
    :try_start_5a
    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_57

    :cond_5d
    :goto_5d
    return p0

    .line 300
    :goto_5e
    throw p0
.end method

.method public final readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "ExecSystemDataMgr"

    const-string/jumbo v2, "readStringFromFile"

    .line 334
    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "data is wrong!"

    .line 340
    invoke-static {v1, p1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v2

    .line 344
    :cond_21
    :try_start_21
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_5d

    const/16 p1, 0x400

    :try_start_2d
    new-array p1, p1, [C

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    :goto_34
    invoke-virtual {v1, p1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3f

    .line 349
    invoke-virtual {v3, p1, p0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 351
    :cond_3f
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2
    :try_end_4f
    .catchall {:try_start_2d .. :try_end_4f} :catchall_53

    .line 353
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5d

    goto :goto_61

    :catchall_53
    move-exception p0

    .line 344
    :try_start_54
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p1

    :try_start_59
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw p0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p0

    .line 354
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_61
    return-object v2
.end method

.method public final writeStringToFile(Landroid/os/Bundle;)Z
    .registers 6

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "ExecSystemDataMgr"

    const-string/jumbo v2, "writeStringToFile"

    .line 306
    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "paramStr1"

    .line 309
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_73

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_73

    .line 317
    :cond_28
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    :try_start_2d
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_56

    .line 319
    :try_start_37
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_4c

    .line 322
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4a

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_65

    .line 326
    :goto_46
    invoke-static {v1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_65

    :catchall_4a
    move-exception p0

    goto :goto_59

    :catchall_4c
    move-exception p1

    .line 318
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v0

    :try_start_52
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception p1

    move v3, p0

    move-object p0, p1

    .line 323
    :goto_59
    :try_start_59
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_66

    if-eqz v3, :cond_65

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_65

    goto :goto_46

    :cond_65
    :goto_65
    return v3

    :catchall_66
    move-exception p0

    if-eqz v3, :cond_72

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 326
    invoke-static {v1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    .line 328
    :cond_72
    throw p0

    :cond_73
    :goto_73
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p0

    aput-object p1, v2, v3

    const-string/jumbo p1, "wrong param %s %s"

    .line 312
    invoke-static {v1, p1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return p0
.end method
