.class public Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;
.super Ljava/lang/Object;
.source "SnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;,
        Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;,
        Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SnapshotManager"


# instance fields
.field public final mCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

.field public final mContext:Landroid/content/Context;

.field public mSnapshotRepositories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    .line 79
    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    return-void
.end method


# virtual methods
.method public addHistory(IIILjava/lang/String;)V
    .registers 5

    .line 328
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 329
    new-instance p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    invoke-direct {p1, p2, p3, p4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;-><init>(IILjava/lang/String;)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->addHistory(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V

    return-void
.end method

.method public addHistory(IIILjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 323
    new-instance p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    invoke-direct {p1, p2, p3, p4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;-><init>(IILjava/util/Map;)V

    .line 324
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->addHistory(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V

    return-void
.end method

.method public addSnapshot(Landroid/content/Context;IIILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)I
    .registers 8

    .line 135
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1, p4, p3, p5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->add(Landroid/content/Context;IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)I

    move-result p1

    if-gez p1, :cond_11

    const/4 p0, -0x3

    if-eq p1, p0, :cond_10

    .line 139
    invoke-virtual {v0, p4, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    :cond_10
    return p1

    .line 144
    :cond_11
    invoke-virtual {p5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p1

    if-eqz p1, :cond_26

    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    const/4 v1, 0x4

    if-eq p1, v1, :cond_26

    const/16 v1, 0x8

    if-eq p1, v1, :cond_26

    goto :goto_38

    .line 150
    :cond_26
    invoke-static {p2, p3, p4, p5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveBackupFile(IIILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 151
    sget-object p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->TAG:Ljava/lang/String;

    const-string p1, "addSnapshot: Failed to copy backup file."

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0, p4, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    const/4 p0, -0x2

    return p0

    .line 166
    :cond_38
    :goto_38
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return p4
.end method

.method public clearRepository(I)V
    .registers 4

    .line 290
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 292
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 294
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeBackupFiles(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V

    goto :goto_e

    .line 297
    :cond_1e
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->clear()V

    goto :goto_3d

    .line 299
    :cond_22
    sget-object p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear: SnapshotRepository for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 334
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    .line 335
    :goto_9
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 336
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 337
    iget-object v2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 338
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getUserId()I

    move-result v2

    if-ltz v2, :cond_28

    .line 339
    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2b
    return-void
.end method

.method public getAllSnapshots(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getLastSnapshot(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .registers 2

    .line 124
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getLastSnapshot()Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    return-object p0
.end method

.method public getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    if-nez v0, :cond_14

    .line 106
    new-instance v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    invoke-direct {v0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;-><init>(I)V

    .line 107
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .registers 3

    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 120
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshotCount(I)I
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result p0

    return p0
.end method

.method public getSnapshotCount(II)I
    .registers 4

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_28

    .line 92
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 94
    invoke-virtual {p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result p1

    if-eqz p1, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_28
    return v0
.end method

.method public loadSettingsLockedForSnapshot(I)V
    .registers 4

    .line 304
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->clear()V

    .line 307
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-static {v1, p1, v0, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->loadSettingsLockedForSnapshot(Landroid/content/Context;ILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;)I

    move-result p0

    .line 308
    invoke-virtual {v0, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->setKey(I)V

    return-void
.end method

.method public makeSnapshotKey(I)I
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->makeKey()I

    move-result p0

    return p0
.end method

.method public migrateToPriorSnapshot(III)V
    .registers 7

    .line 212
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 217
    :cond_7
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getIndex(I)I

    move-result p1

    .line 218
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p2

    .line 219
    invoke-virtual {p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    :goto_19
    if-ltz p1, :cond_8b

    .line 221
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v1

    if-nez v1, :cond_29

    .line 223
    sget-object v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->TAG:Ljava/lang/String;

    const-string v2, "migrateToPriorSnapshot: Something wrong!"

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 227
    :cond_29
    invoke-virtual {v1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 228
    invoke-virtual {v1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object p0

    .line 229
    invoke-virtual {p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, p3, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    .line 230
    invoke-virtual {p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getSettingsData(I)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {v1, p3, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setSettingsData(ILjava/util/HashMap;)V

    .line 231
    sget-object p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migrateToPriorSnapshot: source = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", target = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7f

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_74

    goto :goto_7f

    .line 237
    :cond_74
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 238
    invoke-virtual {v1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    goto :goto_8b

    :cond_7f
    :goto_7f
    const-string p2, "migrateToPriorSnapshot: source does not exist."

    .line 234
    invoke-static {p1, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    goto :goto_8b

    :cond_88
    :goto_88
    add-int/lit8 p1, p1, -0x1

    goto :goto_19

    :cond_8b
    :goto_8b
    return-void
.end method

.method public final removeBackupFiles(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 280
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 282
    sget-object v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeBackupFiles: which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",wallpaperFile  = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cropFile = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v2, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    goto :goto_b

    :cond_56
    return-void
.end method

.method public removeSnapshotByKey(II)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeBackupFiles(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V

    .line 176
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_37

    .line 178
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 184
    :cond_37
    invoke-static {p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFilesByKey(II)V

    return-object p0
.end method

.method public removeSnapshotByWhich(II)V
    .registers 6

    .line 190
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 193
    invoke-virtual {v1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->remove(I)V

    .line 194
    invoke-virtual {v1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFiles(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 196
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    move-result v2

    if-nez v2, :cond_c

    .line 197
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    goto :goto_c

    .line 202
    :cond_30
    invoke-static {p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFilesByWhich(II)V

    return-void
.end method

.method public saveSettingsLockedForSnapshot(I)V
    .registers 4

    .line 312
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    if-nez v0, :cond_23

    .line 314
    sget-object p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveSettingsLockedForSnapshot: Nothing to save for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_23
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-static {v1, p1, v0, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveSettingsLockedForSnapshot(Landroid/content/Context;ILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;)V

    return-void
.end method

.method public shouldRestoreSnapshot(III)Z
    .registers 7

    .line 253
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 258
    :cond_8
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getIndex(I)I

    move-result p2

    .line 259
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_11
    if-ltz p2, :cond_2c

    .line 261
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v1

    if-nez v1, :cond_22

    .line 263
    sget-object v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "shouldRestoreSnapshot: Something wrong!"

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 267
    :cond_22
    invoke-virtual {v1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v1

    if-eqz v1, :cond_29

    return p1

    :cond_29
    :goto_29
    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_2c
    return v0
.end method
