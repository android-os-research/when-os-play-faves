.class public Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;
.super Ljava/lang/Object;
.source "SnapshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SnapshotHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkWhich(I)I
    .registers 2

    .line 89
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-nez v0, :cond_8

    or-int/lit8 p0, p0, 0x4

    :cond_8
    return p0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .registers 4

    if-eqz p0, :cond_25

    .line 225
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 226
    sget-object v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_25
    return-void
.end method

.method public static deleteFiles(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    if-eqz p0, :cond_10

    .line 234
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperCropFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    :cond_10
    return-void
.end method

.method public static deleteFiles(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V
    .registers 3

    if-eqz p0, :cond_22

    .line 241
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 243
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 244
    invoke-static {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFiles(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_a

    :cond_22
    return-void
.end method

.method public static deleteFilesByKey(II)V
    .registers 14

    if-gtz p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 254
    fill-array-data v1, :array_66

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 255
    fill-array-data v3, :array_6e

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v0, :cond_65

    .line 257
    aget v6, v1, v5

    move v7, v4

    :goto_16
    if-ge v7, v2, :cond_62

    .line 258
    aget v8, v3, v7

    or-int/2addr v8, v6

    .line 261
    :try_start_1b
    invoke-static {p0, v8}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->listBackupFiles(II)[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_5f

    .line 262
    array-length v9, v8

    if-lez v9, :cond_5f

    move v9, v4

    .line 263
    :goto_25
    array-length v10, v8

    if-ge v9, v10, :cond_5f

    .line 264
    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 265
    aget-object v10, v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, p1, :cond_41

    .line 266
    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_41} :catch_44

    :cond_41
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :catch_44
    move-exception v8

    .line 271
    sget-object v9, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteFilesByKey: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_65
    return-void

    :array_66
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_6e
    .array-data 4
        0x4
        0x10
        0x8
        0x20
    .end array-data
.end method

.method public static deleteFilesByWhich(II)V
    .registers 5

    if-gtz p1, :cond_3

    return-void

    .line 283
    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->listBackupFiles(II)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 284
    array-length v0, p0

    if-lez v0, :cond_48

    const/4 v0, 0x0

    .line 285
    :goto_d
    array-length v1, p0

    if-ge v0, v1, :cond_48

    .line 286
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 287
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_2a

    .line 288
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2d

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :catch_2d
    move-exception p0

    .line 293
    sget-object p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFilesByWhich: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-void
.end method

.method public static getBackupWallpaperDir(I)Ljava/lang/String;
    .registers 2

    .line 155
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "dex_wallpaper_backup"

    goto :goto_16

    .line 157
    :cond_9
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string/jumbo p0, "sub_wallpaper_backup"

    goto :goto_16

    :cond_13
    const-string/jumbo p0, "wallpaper_backup"

    :goto_16
    return-object p0
.end method

.method public static getBackupWallpaperFile(III)Ljava/io/File;
    .registers 5

    .line 141
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 142
    invoke-static {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-static {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    .line 144
    :goto_f
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDir(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .registers 3

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 135
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWallpaperDir(I)Ljava/io/File;
    .registers 1

    .line 199
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getWallpaperLockDir(I)Ljava/io/File;
    .registers 3

    .line 195
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "wallpaper_lock_images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWhiches(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    .line 101
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_23

    .line 102
    invoke-static {v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWhichesForEachMode(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-static {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWhichesForEachMode(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    .line 105
    :cond_23
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    or-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p0

    or-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 109
    :cond_3c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_43
    return-object v0
.end method

.method public static getWhichesForEachMode(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    or-int/lit8 v1, p0, 0x4

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_2d

    .line 120
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_24

    and-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_2d

    or-int/lit8 p0, p0, 0x10

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_24
    or-int/lit8 p0, p0, 0x10

    .line 125
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public static listBackupFiles(II)[Ljava/io/File;
    .registers 4

    .line 299
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-static {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    .line 300
    :goto_f
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDir(I)Ljava/lang/String;

    move-result-object p1

    .line 301
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    sget-object p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listBackupFiles: directory = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    .line 305
    sget-object p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listBackupFiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadSettingsLockedForSnapshot(Landroid/content/Context;ILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;)I
    .registers 29

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, " "

    const-string v5, "failed parsing "

    .line 313
    new-instance v6, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "wallpaper_backup_info.xml"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 314
    new-instance v7, Lcom/android/internal/util/JournaledFile;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 316
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v6

    .line 317
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_4d

    .line 318
    sget-object v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    const-string v2, "loadSettingsLockedForSnapshot: Backup data doesn\'t exist."

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 323
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1040603

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 322
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 330
    :try_start_5c
    new-instance v11, Ljava/io/FileInputStream;
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_5e} :catch_4dd
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_5e} :catch_4b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_5e} :catch_48b
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_5e} :catch_461
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5e} :catch_437
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5c .. :try_end_5e} :catch_407

    :try_start_5e
    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_61} :catch_4dd
    .catch Ljava/lang/NullPointerException; {:try_start_5e .. :try_end_61} :catch_3fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_61} :catch_3ed
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_61} :catch_3e0
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_3d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5e .. :try_end_61} :catch_407

    .line 331
    :try_start_61
    invoke-static {v11}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v12

    .line 333
    invoke-interface {v12}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v13
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_69} :catch_3cb
    .catch Ljava/lang/NullPointerException; {:try_start_61 .. :try_end_69} :catch_3c4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_69} :catch_3bd
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_69} :catch_3b6
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_69} :catch_3af
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_61 .. :try_end_69} :catch_3a1

    const/4 v14, 0x1

    move/from16 v16, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_73
    if-eq v13, v14, :cond_39d

    const-string v10, "Backup"

    const/4 v14, 0x2

    if-ne v13, v14, :cond_305

    .line 344
    :try_start_7a
    invoke-interface {v12}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 346
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v21
    :try_end_82
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_82} :catch_2fc
    .catch Ljava/lang/NullPointerException; {:try_start_7a .. :try_end_82} :catch_2f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_82} :catch_2ea
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_82} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_82} :catch_2d8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7a .. :try_end_82} :catch_2c9

    const/4 v14, 0x5

    sparse-switch v21, :sswitch_data_4f2

    goto/16 :goto_f1

    :sswitch_88
    :try_start_88
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    const/4 v10, 0x0

    goto/16 :goto_f2

    :sswitch_91
    const-string v10, "kwpSettings"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    const/4 v10, 0x4

    goto/16 :goto_f2

    :sswitch_9c
    const-string v10, "kwp"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    const/4 v10, 0x2

    goto/16 :goto_f2

    :sswitch_a7
    const-string/jumbo v10, "wp"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    const/4 v10, 0x1

    goto :goto_f2

    :sswitch_b2
    const-string/jumbo v10, "wpSettings"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    const/4 v10, 0x3

    goto :goto_f2

    :sswitch_bd
    const-string v10, "History"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    move v10, v14

    goto :goto_f2

    :catch_c7
    move-exception v0

    move-object v1, v0

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    move-object v10, v11

    move v9, v15

    goto/16 :goto_412

    :catch_d3
    move-exception v0

    move-object v1, v0

    move-object v10, v11

    move v9, v15

    goto/16 :goto_3d8

    :catch_d9
    move-exception v0

    move-object v1, v0

    move-object v10, v11

    move v9, v15

    goto/16 :goto_3e5

    :catch_df
    move-exception v0

    move-object v1, v0

    move-object v10, v11

    move v9, v15

    goto/16 :goto_3f2

    :catch_e5
    move-exception v0

    move-object v1, v0

    move-object v10, v11

    move v9, v15

    goto/16 :goto_3ff

    :catch_eb
    move-exception v0

    move-object v1, v0

    move-object v10, v11

    move v9, v15

    goto/16 :goto_4e2

    :cond_f1
    :goto_f1
    const/4 v10, -0x1

    :goto_f2
    if-eqz v10, :cond_299

    const/4 v13, 0x1

    if-eq v10, v13, :cond_24e

    const/4 v13, 0x2

    if-eq v10, v13, :cond_22a

    const/4 v13, 0x3

    if-eq v10, v13, :cond_114

    const/4 v13, 0x4

    if-eq v10, v13, :cond_114

    if-eq v10, v14, :cond_110

    :goto_102
    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v11

    goto/16 :goto_1ac

    .line 430
    :cond_110
    invoke-static {v12, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->parseSnapshotHistory(Landroid/util/TypedXmlPullParser;Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V
    :try_end_113
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_113} :catch_eb
    .catch Ljava/lang/NullPointerException; {:try_start_88 .. :try_end_113} :catch_e5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_88 .. :try_end_113} :catch_df
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_113} :catch_d9
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_113} :catch_d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_88 .. :try_end_113} :catch_c7

    goto :goto_102

    .line 385
    :cond_114
    :try_start_114
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_119
    .catch Ljava/io/FileNotFoundException; {:try_start_114 .. :try_end_119} :catch_2fc
    .catch Ljava/lang/NullPointerException; {:try_start_114 .. :try_end_119} :catch_2f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_114 .. :try_end_119} :catch_2ea
    .catch Ljava/lang/NumberFormatException; {:try_start_114 .. :try_end_119} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_119} :catch_2d8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_114 .. :try_end_119} :catch_2c9

    :try_start_119
    const-string/jumbo v13, "which"

    const/4 v14, 0x0

    .line 387
    invoke-interface {v12, v14, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_125
    .catch Ljava/lang/NumberFormatException; {:try_start_119 .. :try_end_125} :catch_126
    .catch Ljava/io/FileNotFoundException; {:try_start_119 .. :try_end_125} :catch_eb
    .catch Ljava/lang/NullPointerException; {:try_start_119 .. :try_end_125} :catch_e5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_119 .. :try_end_125} :catch_df
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_125} :catch_d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_119 .. :try_end_125} :catch_c7

    goto :goto_12d

    :catch_126
    move-exception v0

    move-object v13, v0

    .line 389
    :try_start_128
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move/from16 v13, v16

    :goto_12d
    move-object/from16 v14, v17

    .line 391
    invoke-virtual {v14, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWhich(I)V
    :try_end_132
    .catch Ljava/io/FileNotFoundException; {:try_start_128 .. :try_end_132} :catch_2fc
    .catch Ljava/lang/NullPointerException; {:try_start_128 .. :try_end_132} :catch_2f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_128 .. :try_end_132} :catch_2ea
    .catch Ljava/lang/NumberFormatException; {:try_start_128 .. :try_end_132} :catch_2e1
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_132} :catch_2d8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_128 .. :try_end_132} :catch_2c9

    move-object/from16 v17, v11

    .line 393
    :try_start_134
    invoke-static {v13}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->getSettingNames(I)[Ljava/lang/String;

    move-result-object v11
    :try_end_138
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_138} :catch_36a
    .catch Ljava/lang/NullPointerException; {:try_start_134 .. :try_end_138} :catch_227
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_134 .. :try_end_138} :catch_224
    .catch Ljava/lang/NumberFormatException; {:try_start_134 .. :try_end_138} :catch_221
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_138} :catch_21e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_134 .. :try_end_138} :catch_215

    move-object/from16 v20, v4

    .line 394
    :try_start_13a
    array-length v4, v11
    :try_end_13b
    .catch Ljava/io/FileNotFoundException; {:try_start_13a .. :try_end_13b} :catch_36a
    .catch Ljava/lang/NullPointerException; {:try_start_13a .. :try_end_13b} :catch_20a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13a .. :try_end_13b} :catch_1ff
    .catch Ljava/lang/NumberFormatException; {:try_start_13a .. :try_end_13b} :catch_1f4
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13b} :catch_1e9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13a .. :try_end_13b} :catch_1e7

    move-object/from16 v21, v6

    const/4 v6, 0x0

    :goto_13e
    if-ge v6, v4, :cond_169

    move/from16 v19, v4

    :try_start_142
    aget-object v4, v11, v6
    :try_end_144
    .catch Ljava/io/FileNotFoundException; {:try_start_142 .. :try_end_144} :catch_36a
    .catch Ljava/lang/NullPointerException; {:try_start_142 .. :try_end_144} :catch_1db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_142 .. :try_end_144} :catch_1cf
    .catch Ljava/lang/NumberFormatException; {:try_start_142 .. :try_end_144} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_144} :catch_1b7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_142 .. :try_end_144} :catch_163

    move-object/from16 v22, v11

    const/4 v11, 0x0

    .line 396
    :try_start_147
    invoke-interface {v12, v11, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 397
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_156
    .catch Ljava/lang/NumberFormatException; {:try_start_147 .. :try_end_156} :catch_157
    .catch Ljava/io/FileNotFoundException; {:try_start_147 .. :try_end_156} :catch_36a
    .catch Ljava/lang/NullPointerException; {:try_start_147 .. :try_end_156} :catch_1db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_147 .. :try_end_156} :catch_1cf
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_156} :catch_1b7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_147 .. :try_end_156} :catch_163

    goto :goto_15c

    :catch_157
    move-exception v0

    move-object v4, v0

    .line 399
    :try_start_159
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_159 .. :try_end_15c} :catch_36a
    .catch Ljava/lang/NullPointerException; {:try_start_159 .. :try_end_15c} :catch_1db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_159 .. :try_end_15c} :catch_1cf
    .catch Ljava/lang/NumberFormatException; {:try_start_159 .. :try_end_15c} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_1b7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_159 .. :try_end_15c} :catch_163

    :goto_15c
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v19

    move-object/from16 v11, v22

    goto :goto_13e

    :catch_163
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v5

    goto/16 :goto_2d3

    .line 403
    :cond_169
    :try_start_169
    invoke-static {v13}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_196

    const-string/jumbo v4, "wallpaper_sub_display_orig"

    const-string/jumbo v6, "wallpaper_sub_display"

    .line 407
    invoke-static {v13}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v11
    :try_end_179
    .catch Ljava/io/FileNotFoundException; {:try_start_169 .. :try_end_179} :catch_36a
    .catch Ljava/lang/NullPointerException; {:try_start_169 .. :try_end_179} :catch_1db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_169 .. :try_end_179} :catch_1cf
    .catch Ljava/lang/NumberFormatException; {:try_start_169 .. :try_end_179} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_179} :catch_1b7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_169 .. :try_end_179} :catch_1b2

    if-eqz v11, :cond_181

    :try_start_17b
    const-string/jumbo v4, "wallpaper_sub_display_lock_orig"

    const-string/jumbo v6, "wallpaper_sub_display_lock"
    :try_end_181
    .catch Ljava/io/FileNotFoundException; {:try_start_17b .. :try_end_181} :catch_36a
    .catch Ljava/lang/NullPointerException; {:try_start_17b .. :try_end_181} :catch_1db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17b .. :try_end_181} :catch_1cf
    .catch Ljava/lang/NumberFormatException; {:try_start_17b .. :try_end_181} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_181} :catch_1b7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17b .. :try_end_181} :catch_163

    .line 413
    :cond_181
    :try_start_181
    new-instance v11, Ljava/io/File;
    :try_end_183
    .catch Ljava/io/FileNotFoundException; {:try_start_181 .. :try_end_183} :catch_36a
    .catch Ljava/lang/NullPointerException; {:try_start_181 .. :try_end_183} :catch_1db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_181 .. :try_end_183} :catch_1cf
    .catch Ljava/lang/NumberFormatException; {:try_start_181 .. :try_end_183} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_183} :catch_1b7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_181 .. :try_end_183} :catch_1b2

    move-object/from16 v23, v5

    move-object/from16 v5, v18

    :try_start_187
    invoke-direct {v11, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 414
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWallpaperCropFile(Ljava/io/File;)V

    goto :goto_19a

    :cond_196
    move-object/from16 v23, v5

    move-object/from16 v5, v18

    .line 419
    :goto_19a
    invoke-static {v1, v13, v9}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 420
    invoke-interface {v3, v14, v13, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestInitializeThumnailFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    if-eqz v8, :cond_1ac

    .line 424
    invoke-virtual {v8, v13, v14}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    .line 425
    invoke-virtual {v8, v13, v10}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setSettingsData(ILjava/util/HashMap;)V

    :cond_1ac
    :goto_1ac
    move-object/from16 v18, v5

    const/4 v6, 0x0

    :goto_1af
    const/4 v11, 0x0

    goto/16 :goto_2c3

    :catch_1b2
    move-exception v0

    move-object/from16 v23, v5

    goto/16 :goto_2d2

    :catch_1b7
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    goto/16 :goto_442

    :catch_1c3
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    goto/16 :goto_46c

    :catch_1cf
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    goto/16 :goto_496

    :catch_1db
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    goto/16 :goto_4bf

    :catch_1e7
    move-exception v0

    goto :goto_218

    :catch_1e9
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    goto/16 :goto_442

    :catch_1f4
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    goto/16 :goto_46c

    :catch_1ff
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    goto/16 :goto_496

    :catch_20a
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    goto/16 :goto_4bf

    :catch_215
    move-exception v0

    move-object/from16 v20, v4

    :goto_218
    move-object/from16 v23, v5

    move-object/from16 v21, v6

    goto/16 :goto_2d2

    :catch_21e
    move-exception v0

    goto/16 :goto_2db

    :catch_221
    move-exception v0

    goto/16 :goto_2e4

    :catch_224
    move-exception v0

    goto/16 :goto_2ed

    :catch_227
    move-exception v0

    goto/16 :goto_2f6

    :cond_22a
    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v17, v11

    .line 374
    invoke-static/range {p1 .. p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_lock_orig"

    const-string/jumbo v6, "wallpaper_lock"

    .line 378
    new-instance v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v10, v1, v4, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 379
    invoke-interface {v3, v12, v10, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestParseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    move-object/from16 v18, v4

    move-object v14, v10

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x2

    goto/16 :goto_2c3

    :cond_24e
    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v17, v11

    .line 354
    invoke-static/range {p1 .. p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    const-string/jumbo v6, "wallpaper"

    .line 358
    new-instance v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v10, v1, v4, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 359
    invoke-interface {v3, v12, v10, v6}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestParseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    const-string v5, "component"

    const/4 v11, 0x0

    .line 361
    invoke-interface {v12, v11, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_277

    .line 363
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    goto :goto_278

    :cond_277
    const/4 v14, 0x0

    .line 362
    :goto_278
    invoke-virtual {v10, v14}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 365
    invoke-virtual {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getNextWallpaperComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_291

    const-string v5, "android"

    .line 366
    invoke-virtual {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getNextWallpaperComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 367
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 366
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_294

    .line 368
    :cond_291
    invoke-virtual {v10, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setNextWallpaperComponent(Landroid/content/ComponentName;)V

    :cond_294
    move-object/from16 v18, v4

    move-object v14, v10

    goto/16 :goto_1af

    :cond_299
    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v14, v17

    move-object/from16 v5, v18

    const/4 v6, 0x0

    move-object/from16 v17, v11

    const-string v4, "key"

    const/4 v11, 0x0

    .line 348
    invoke-interface {v12, v11, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 349
    new-instance v8, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    invoke-direct {v8, v1, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;-><init>(II)V

    const-string/jumbo v9, "source"

    .line 350
    invoke-interface {v12, v11, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setSource(Ljava/lang/String;)V

    move v9, v4

    move-object/from16 v18, v5

    :goto_2c3
    move-object/from16 v5, v18

    const/16 v18, 0x1

    goto/16 :goto_389

    :catch_2c9
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v17, v11

    :goto_2d2
    move-object v1, v0

    :goto_2d3
    move v9, v15

    move-object/from16 v10, v17

    goto/16 :goto_412

    :catch_2d8
    move-exception v0

    move-object/from16 v17, v11

    :goto_2db
    move-object v1, v0

    move v9, v15

    move-object/from16 v10, v17

    goto/16 :goto_3d8

    :catch_2e1
    move-exception v0

    move-object/from16 v17, v11

    :goto_2e4
    move-object v1, v0

    move v9, v15

    move-object/from16 v10, v17

    goto/16 :goto_3e5

    :catch_2ea
    move-exception v0

    move-object/from16 v17, v11

    :goto_2ed
    move-object v1, v0

    move v9, v15

    move-object/from16 v10, v17

    goto/16 :goto_3f2

    :catch_2f3
    move-exception v0

    move-object/from16 v17, v11

    :goto_2f6
    move-object v1, v0

    move v9, v15

    move-object/from16 v10, v17

    goto/16 :goto_3ff

    :catch_2fc
    move-exception v0

    move-object/from16 v17, v11

    :goto_2ff
    move-object v1, v0

    move v9, v15

    move-object/from16 v10, v17

    goto/16 :goto_4e2

    :cond_305
    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v14, v17

    move-object/from16 v5, v18

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v18, 0x1

    move-object/from16 v17, v11

    const/4 v11, 0x0

    if-ne v13, v4, :cond_36c

    .line 434
    invoke-interface {v12}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_389

    .line 436
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v4

    const/16 v10, 0x64

    if-ge v4, v10, :cond_389

    .line 437
    invoke-virtual {v2, v8}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->add(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)Z

    if-le v15, v9, :cond_331

    goto/16 :goto_389

    :cond_331
    move v15, v9

    goto/16 :goto_389

    :catch_334
    move-exception v0

    goto :goto_2d2

    :catch_336
    move-exception v0

    move-object v1, v0

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v4, v23

    goto/16 :goto_442

    :catch_343
    move-exception v0

    move-object v1, v0

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v4, v23

    goto/16 :goto_46c

    :catch_350
    move-exception v0

    move-object v1, v0

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v4, v23

    goto/16 :goto_496

    :catch_35d
    move-exception v0

    move-object v1, v0

    move v9, v15

    move-object/from16 v10, v17

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v4, v23

    goto/16 :goto_4bf

    :catch_36a
    move-exception v0

    goto :goto_2ff

    :cond_36c
    const/4 v4, 0x4

    if-ne v13, v4, :cond_389

    .line 442
    invoke-interface {v12}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 443
    sget-object v10, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSettingsLockedForSnapshot: text = "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_389
    :goto_389
    invoke-interface {v12}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v13
    :try_end_38d
    .catch Ljava/io/FileNotFoundException; {:try_start_187 .. :try_end_38d} :catch_36a
    .catch Ljava/lang/NullPointerException; {:try_start_187 .. :try_end_38d} :catch_35d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_187 .. :try_end_38d} :catch_350
    .catch Ljava/lang/NumberFormatException; {:try_start_187 .. :try_end_38d} :catch_343
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_38d} :catch_336
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_187 .. :try_end_38d} :catch_334

    move-object/from16 v11, v17

    move-object/from16 v4, v20

    move-object/from16 v6, v21

    move-object/from16 v17, v14

    move/from16 v14, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v23

    goto/16 :goto_73

    :cond_39d
    move-object/from16 v17, v11

    goto/16 :goto_4ee

    :catch_3a1
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v17, v11

    move-object v1, v0

    move-object/from16 v10, v17

    goto/16 :goto_411

    :catch_3af
    move-exception v0

    move-object/from16 v17, v11

    move-object v1, v0

    move-object/from16 v10, v17

    goto :goto_3d7

    :catch_3b6
    move-exception v0

    move-object/from16 v17, v11

    move-object v1, v0

    move-object/from16 v10, v17

    goto :goto_3e4

    :catch_3bd
    move-exception v0

    move-object/from16 v17, v11

    move-object v1, v0

    move-object/from16 v10, v17

    goto :goto_3f1

    :catch_3c4
    move-exception v0

    move-object/from16 v17, v11

    move-object v1, v0

    move-object/from16 v10, v17

    goto :goto_3fe

    :catch_3cb
    move-exception v0

    move-object/from16 v17, v11

    move-object v1, v0

    move-object/from16 v10, v17

    goto/16 :goto_4e1

    :catch_3d3
    move-exception v0

    const/4 v11, 0x0

    move-object v1, v0

    move-object v10, v11

    :goto_3d7
    const/4 v9, 0x0

    :goto_3d8
    move-object/from16 v24, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v24

    goto/16 :goto_442

    :catch_3e0
    move-exception v0

    const/4 v11, 0x0

    move-object v1, v0

    move-object v10, v11

    :goto_3e4
    const/4 v9, 0x0

    :goto_3e5
    move-object/from16 v24, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v24

    goto/16 :goto_46c

    :catch_3ed
    move-exception v0

    const/4 v11, 0x0

    move-object v1, v0

    move-object v10, v11

    :goto_3f1
    const/4 v9, 0x0

    :goto_3f2
    move-object/from16 v24, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v24

    goto/16 :goto_496

    :catch_3fa
    move-exception v0

    const/4 v11, 0x0

    move-object v1, v0

    move-object v10, v11

    :goto_3fe
    const/4 v9, 0x0

    :goto_3ff
    move-object/from16 v24, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v24

    goto/16 :goto_4bf

    :catch_407
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    const/4 v11, 0x0

    move-object v1, v0

    move-object v10, v11

    :goto_411
    const/4 v9, 0x0

    .line 464
    :goto_412
    sget-object v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_4ec

    :catch_437
    move-exception v0

    const/4 v11, 0x0

    move-object/from16 v24, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v24

    move-object v1, v0

    move-object v10, v11

    const/4 v9, 0x0

    .line 461
    :goto_442
    sget-object v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4ec

    :catch_461
    move-exception v0

    const/4 v11, 0x0

    move-object/from16 v24, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v24

    move-object v1, v0

    move-object v10, v11

    const/4 v9, 0x0

    .line 458
    :goto_46c
    sget-object v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_4ec

    :catch_48b
    move-exception v0

    const/4 v11, 0x0

    move-object/from16 v24, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v24

    move-object v1, v0

    move-object v10, v11

    const/4 v9, 0x0

    .line 455
    :goto_496
    sget-object v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_4ec

    :catch_4b4
    move-exception v0

    const/4 v11, 0x0

    move-object/from16 v24, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v24

    move-object v1, v0

    move-object v10, v11

    const/4 v9, 0x0

    .line 452
    :goto_4bf
    sget-object v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4ec

    :catch_4dd
    move-exception v0

    const/4 v11, 0x0

    move-object v1, v0

    move-object v10, v11

    :goto_4e1
    const/4 v9, 0x0

    .line 449
    :goto_4e2
    sget-object v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    const-string v3, "no backup data"

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_4ec
    move v15, v9

    move-object v11, v10

    .line 467
    :goto_4ee
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v15

    :sswitch_data_4f2
    .sparse-switch
        -0x6587838c -> :sswitch_bd
        -0x3a8eb9e4 -> :sswitch_b2
        0xed9 -> :sswitch_a7
        0x1a084 -> :sswitch_9c
        0x107fcc7 -> :sswitch_91
        0x762561e2 -> :sswitch_88
    .end sparse-switch
.end method

.method public static parseSnapshotHistory(Landroid/util/TypedXmlPullParser;Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V
    .registers 15

    const/4 v0, 0x0

    const-string v1, "hisotory_count"

    const/4 v2, 0x0

    .line 547
    invoke-interface {p0, v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_ee

    if-lez v1, :cond_ea

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v0, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v0, v5, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 553
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "desc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 554
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_72

    .line 555
    new-instance v8, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1, v8}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->addHistory(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V

    goto :goto_ea

    .line 558
    :cond_72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resultCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v0, v7, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_ea

    .line 560
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move v9, v2

    :goto_90
    if-ge v9, v7, :cond_e2

    .line 562
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "which"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v0, v10, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 563
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "result"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v0, v11, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 564
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_90

    .line 567
    :cond_e2
    new-instance v7, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    invoke-direct {v7, v4, v5, v6, v8}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;-><init>(IILjava/lang/String;Ljava/util/Map;)V

    .line 568
    invoke-virtual {p1, v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->addHistory(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V

    :cond_ea
    :goto_ea
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    :cond_ee
    return-void
.end method

.method public static saveBackupFile(IIILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 8

    .line 165
    sget-object v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveBackupFile: userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", backupWallpaper ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p3, :cond_38

    return v1

    .line 172
    :cond_38
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v2

    .line 173
    invoke-static {p0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object p0

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "saveBackupFile: sourceFile = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eqz v2, :cond_85

    .line 177
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5f

    goto :goto_85

    .line 183
    :cond_5f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveBackupFile: targetFile = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 186
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_84

    const-string/jumbo p0, "saveBackupFile: Failed to copy file."

    .line 187
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_84
    return p1

    :cond_85
    :goto_85
    const/4 p0, 0x0

    .line 178
    invoke-virtual {p3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    const-string/jumbo p0, "saveBackupFile: sourceFile is not exist."

    .line 179
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static saveFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 6

    if-eqz p0, :cond_5b

    .line 203
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5b

    if-eqz p1, :cond_2b

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 205
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 206
    sget-object v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveFile: target file doesn\'t exist, mkdir success? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2b
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 209
    sget-object v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveFile: success copy file. \n\tsource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n\ttarget = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 214
    :cond_52
    sget-object p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "saveFile: Failed to copy file."

    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 217
    :cond_5b
    sget-object p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "saveFile: Source file does not exist."

    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_63
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static saveSettingsLockedForSnapshot(Landroid/content/Context;ILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;)V
    .registers 15

    const-string p0, "Backup"

    const-string v0, "History"

    .line 473
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v2, "wallpaper_backup_info.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 474
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    const/4 p1, 0x0

    .line 477
    :try_start_35
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3f} :catch_10d

    .line 478
    :try_start_3f
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 479
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p2, :cond_ed

    .line 483
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v4

    if-lez v4, :cond_ed

    .line 484
    sget-object v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveSettingsLockedForSnapshot: Backup data size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_71
    if-ltz v4, :cond_ed

    .line 486
    invoke-virtual {p2, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v5

    if-eqz v5, :cond_ea

    .line 488
    invoke-interface {v3, p1, p0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "key"

    .line 489
    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, p1, v6, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "source"

    .line 490
    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, p1, v6, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v6

    .line 493
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9b
    :goto_9b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 494
    invoke-virtual {v5, v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v8

    if-eqz v8, :cond_9b

    .line 496
    invoke-static {v7}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v9

    if-eqz v9, :cond_bb

    const-string/jumbo v9, "wp"

    goto :goto_bd

    :cond_bb
    const-string v9, "kwp"

    .line 497
    :goto_bd
    invoke-static {v7}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v10

    if-nez v10, :cond_c9

    invoke-static {v7}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSupportLock(I)Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 498
    :cond_c9
    invoke-interface {p3, v3, v9, v8}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestWriteWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 499
    invoke-virtual {v5, v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getSettingsData(I)Ljava/util/Map;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 500
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Settings"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v8, v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->writeSnapshotSettingsData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/HashMap;I)V

    goto :goto_9b

    .line 505
    :cond_e7
    invoke-interface {v3, p1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ea
    add-int/lit8 v4, v4, -0x1

    goto :goto_71

    .line 510
    :cond_ed
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getHistoryLength()I

    move-result p0

    if-lez p0, :cond_fc

    .line 511
    invoke-interface {v3, p1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    invoke-static {v3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->writeSnapshotHistory(Landroid/util/TypedXmlSerializer;Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V

    .line 513
    invoke-interface {v3, p1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    :cond_fc
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 517
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 518
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 519
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 520
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_10b} :catch_10c

    goto :goto_113

    :catch_10c
    move-object p1, v2

    .line 522
    :catch_10d
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 523
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_113
    return-void
.end method

.method public static updateSettings(Landroid/content/Context;ILjava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_64

    .line 614
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 615
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 616
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 618
    sget-object v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    .line 622
    :try_start_4d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v0, v2, :cond_a

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5e} :catch_5f

    goto :goto_a

    :catch_5f
    move-exception v0

    .line 628
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :cond_64
    return-void
.end method

.method public static writeDefaultSettings(Landroid/content/Context;II)V
    .registers 10

    .line 635
    invoke-static {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->getSettingNames(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3c

    .line 637
    array-length v0, p2

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_3c

    aget-object v2, p2, v1

    .line 638
    invoke-static {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->getDefaultValue(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_39

    .line 640
    sget-object v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeDefultSettings: Reset to default settings. name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3c
    return-void
.end method

.method public static writeSnapshotHistory(Landroid/util/TypedXmlSerializer;Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getHistoryLength()I

    move-result v0

    .line 578
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getHistoryLength()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "hisotory_count"

    invoke-interface {p0, v2, v3, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v0, :cond_12f

    .line 580
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getHistory()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    .line 581
    :goto_18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_12f

    .line 582
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    if-nez v3, :cond_28

    goto/16 :goto_12b

    .line 587
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    invoke-interface {p0, v2, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    invoke-interface {p0, v2, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    invoke-interface {p0, v2, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    iget-object v4, v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->desc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->desc:Ljava/lang/String;

    invoke-interface {p0, v2, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 594
    :cond_8a
    iget-object v4, v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->results:Ljava/util/Map;

    const-string/jumbo v5, "resultCount"

    if-nez v4, :cond_a5

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_12b

    .line 597
    :cond_a5
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v2, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v4, :cond_12b

    .line 601
    iget-object v3, v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->results:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_c8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "which"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p0, v2, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 603
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p0, v2, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c8

    :cond_12b
    :goto_12b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18

    :cond_12f
    return-void
.end method

.method public static writeSnapshotSettingsData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 532
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "which"

    invoke-interface {p0, v0, v1, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 536
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 537
    :goto_19
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 538
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 539
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 540
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    .line 543
    :cond_37
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
