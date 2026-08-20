.class public abstract Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;
.super Ljava/lang/Object;
.source "AbstractBackupController.java"

# interfaces
.implements Lcom/samsung/android/server/pm/rescueparty/BackupController;


# static fields
.field public static BACKUP_ITEM_INDEX_FIRST:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final BACKUP_ITEM_INDEX_NONE:I = -0x1

.field public static final BACKUP_ROOT_DIR_NAME:Ljava/lang/String; = "pm_backup_files"

.field public static DEBUG:Z = true

.field public static final KEY_BACKUP_ITEM_LIST:Ljava/lang/String; = "backup_item_list"

.field public static final KEY_LAST_SELECTED_ITEM:Ljava/lang/String; = "last_selected_item"

.field public static final MAX_BACKUP_ITEM_CNT:I = 0x3

.field public static TAG:Ljava/lang/String; = "AbstractBackupController"


# instance fields
.field public final mBackupFilesPrefName:Ljava/lang/String;

.field public final mBackupItemList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mLock:Ljava/lang/Object;

.field public mSharedPrefForConfigs:Landroid/content/SharedPreferences;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupFilesPrefName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getSharedPreferencesForConfigs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mSharedPrefForConfigs:Landroid/content/SharedPreferences;

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->initController()V

    return-void

    .line 50
    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Module name is empty or null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .registers 7

    .line 307
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_39

    .line 311
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_39

    .line 314
    aget-object v4, p0, v3

    .line 315
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 316
    invoke-static {v4}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 319
    :cond_19
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_36

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FileUtils"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_39
    return v0
.end method

.method public static deleteContentsAndDir(Ljava/io/File;)Z
    .registers 2

    .line 303
    invoke-static {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method


# virtual methods
.method public addBackupItemList(Ljava/io/File;)V
    .registers 9

    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object p1, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_5f

    const/4 p1, 0x0

    move v2, p1

    .line 218
    :goto_1b
    iget-object v3, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_5f

    .line 219
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerDir()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 222
    sget-object v4, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 226
    :cond_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final cleanUpOutdatedFiles()V
    .registers 9

    .line 230
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_f

    .line 233
    monitor-exit v0

    return-void

    .line 235
    :cond_f
    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_47

    aget-object v4, v1, v3

    .line 236
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_44

    iget-object v5, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 237
    sget-object v5, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing outdated file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {v4}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 241
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 11

    const-string p0, " to "

    const-string v0, " ms"

    const-string v1, "Took "

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 286
    :try_start_a
    sget-boolean v4, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->DEBUG:Z

    if-eqz v4, :cond_2a

    .line 287
    sget-object v4, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2a
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2d} :catch_51
    .catchall {:try_start_a .. :try_end_2d} :catchall_4f

    .line 295
    sget-boolean p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->DEBUG:Z

    if-eqz p0, :cond_4d

    .line 296
    sget-object p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/4 p0, 0x1

    return p0

    :catchall_4f
    move-exception p0

    goto :goto_93

    :catch_51
    move-exception v4

    .line 291
    :try_start_52
    sget-object v5, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to copy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_4f

    const/4 p0, 0x0

    .line 295
    sget-boolean p1, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->DEBUG:Z

    if-eqz p1, :cond_92

    .line 296
    sget-object p1, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return p0

    .line 295
    :goto_93
    sget-boolean p1, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->DEBUG:Z

    if-eqz p1, :cond_b3

    .line 296
    sget-object p1, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_b3
    throw p0
.end method

.method public getBackupConfigInt(Ljava/lang/String;I)I
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mSharedPrefForConfigs:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 357
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getBackupConfigStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mSharedPrefForConfigs:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 363
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getBackupItemNameList()Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 266
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final getBackupRootDir()Ljava/io/File;
    .registers 3

    .line 254
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->injectSystemDataDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "pm_backup_files"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getControllerDir()Ljava/io/File;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 246
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getBackupRootDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 248
    sget-object v1, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to make "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-object v0
.end method

.method public getControllerName()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLastSelectedItemIndex()I
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getLatestBackupItemDir()Ljava/io/File;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLatestBackupItemSinceLastSelected()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_23

    .line 154
    sget-object v0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No backup files for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 159
    :cond_23
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->setLastSelectedItemIndex(I)V

    const/4 v2, 0x1

    .line 160
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->writeLastSelectedItem(Z)V

    .line 164
    :try_start_2a
    iget-object v2, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_5c

    .line 165
    :try_start_2d
    new-instance v3, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_59

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_58

    .line 172
    sget-object p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File doesn\'t exist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_58
    return-object v3

    :catchall_59
    move-exception p0

    .line 166
    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception p0

    .line 168
    sget-object v0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name or any exception occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getLatestBackupItemSinceLastSelected()I
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 197
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_21

    const/4 v0, -0x1

    if-nez v1, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, -0x1

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLastSelectedItemIndex()I

    move-result v2

    if-eq v2, v0, :cond_20

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLastSelectedItemIndex()I

    move-result p0

    add-int/lit8 v1, p0, -0x1

    if-gez v1, :cond_20

    add-int/lit8 v1, v1, 0x3

    :cond_20
    return v1

    :catchall_21
    move-exception p0

    .line 197
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final getNextBackupItemName()Ljava/lang/String;
    .registers 3

    .line 141
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 143
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup_item_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSharedPreferencesForConfigs()Landroid/content/SharedPreferences;
    .registers 4

    .line 332
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupFilesPrefName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    .line 334
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final initController()V
    .registers 5

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->readBackupItems()V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->readLastSelectedItem()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_29

    :catch_7
    move-exception v0

    .line 62
    sget-object v1, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read configs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 66
    :goto_29
    sget-boolean v0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->DEBUG:Z

    if-eqz v0, :cond_61

    .line 67
    sget-object v0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBackupItemList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastSelectedBackupItemIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public injectSystemDataDir()Ljava/io/File;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public abstract onSaveFiles(Ljava/io/File;)Z
.end method

.method public putBackupConfigInt(Ljava/lang/String;IZ)V
    .registers 5

    .line 339
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_13

    .line 341
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mSharedPrefForConfigs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_20

    .line 343
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mSharedPrefForConfigs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    :goto_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public putBackupConfigStr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mSharedPrefForConfigs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final readBackupItems()V
    .registers 6

    const-string v0, "backup_item_list"

    const-string v1, ""

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getBackupConfigStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 75
    array-length v1, v0

    if-nez v1, :cond_14

    goto :goto_28

    .line 78
    :cond_14
    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 80
    iget-object v4, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_28
    :goto_28
    return-void
.end method

.method public final readLastSelectedItem()V
    .registers 3

    const-string v0, "last_selected_item"

    const/4 v1, -0x1

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getBackupConfigInt(Ljava/lang/String;I)I

    move-result v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->setLastSelectedItemIndex(I)V

    return-void
.end method

.method public saveFiles()V
    .registers 7

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getNextBackupItemName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 112
    :cond_19
    sget-boolean v2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->DEBUG:Z

    if-eqz v2, :cond_33

    .line 113
    sget-object v2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving files on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_78

    :cond_33
    const/4 v2, 0x0

    .line 117
    :try_start_34
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->onSaveFiles(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 118
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->addBackupItemList(Ljava/io/File;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->writeBackupItems()V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->cleanUpOutdatedFiles()V

    .line 122
    iget-object v3, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_52

    .line 124
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->setLastSelectedItemIndex(I)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->writeLastSelectedItem(Z)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_52} :catch_54
    .catchall {:try_start_34 .. :try_end_52} :catchall_78

    :cond_52
    const/4 v2, 0x1

    goto :goto_6b

    :catch_54
    move-exception p0

    .line 130
    :try_start_55
    sget-object v3, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save files: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    if-nez v2, :cond_76

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_76

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 137
    :cond_76
    monitor-exit v0

    return-void

    :catchall_78
    move-exception p0

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_55 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public setLastSelectedItemIndex(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final writeBackupItems()V
    .registers 5

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mBackupItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "/data/system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_29
    const-string v1, ","

    .line 98
    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "backup_item_list"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final writeLastSelectedItem(Z)V
    .registers 4

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getLastSelectedItemIndex()I

    move-result v0

    const-string v1, "last_selected_item"

    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(Ljava/lang/String;IZ)V

    return-void
.end method
