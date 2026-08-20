.class public Lcom/android/server/wm/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;,
        Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEDICATED_PACKAGE_ATTR:Ljava/lang/String; = "package_name"

.field public static final DEDICATED_PROCESS_ATTR:Ljava/lang/String; = "process_name"

.field public static final DEDICATED_TAG:Ljava/lang/String; = "dedicated_process"

.field public static final DEDICATED_TASKS_DIRNAME:Ljava/lang/String; = "dedicated_tasks"

.field public static final DEDICATED_TASK_TAG:Ljava/lang/String; = "task"

.field public static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field public static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field public static final PERSISTED_TASK_IDS_FILENAME:Ljava/lang/String; = "persisted_taskIds.txt"

.field public static final TAG:Ljava/lang/String; = "TaskPersister"

.field public static final TAG_TASK:Ljava/lang/String; = "task"

.field public static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field public static final TASK_FILENAME_SUFFIX:Ljava/lang/String; = "_task.xml"


# instance fields
.field public final mIoLock:Ljava/lang/Object;

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field public final mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskIdsDir:Ljava/io/File;

.field public final mTaskIdsInFile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1nUaSJVwZTW78k7oqmW1gTtZqTc(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskPersister;->lambda$removeThumbnails$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$usLLDXWS96hyMiD8IJHbKobcZRQ(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskPersister;->lambda$wakeup$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$v8_mpqz03sWoUWRfn7yZHPXFaSM(Ljava/lang/String;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskPersister;->lambda$getImageFromWriteQueue$2(Ljava/lang/String;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smcreateParentDirectory(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetDedicatedTasksDir(I)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->getDedicatedTasksDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetUserTasksDir(I)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 127
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 129
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 130
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 131
    new-instance p1, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {p1}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 132
    invoke-virtual {p1, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V
    .registers 10

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 103
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "TaskPersister"

    if-eqz v1, :cond_48

    .line 105
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_48

    .line 106
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure deleting legacy images directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_48
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "recent_tasks"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 112
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_76

    .line 113
    :cond_62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure deleting legacy tasks directory: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_76
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_de"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 118
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 119
    iput-object p3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 120
    iput-object p4, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 121
    iput-object p5, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 122
    invoke-virtual {p5, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    return-void
.end method

.method public static createParentDirectory(Ljava/lang/String;)Z
    .registers 2

    .line 537
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 538
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method public static getDedicatedTasksDir(I)Ljava/io/File;
    .registers 3

    .line 651
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "dedicated_tasks"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserImagesDir(I)Ljava/io/File;
    .registers 3

    .line 533
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "recent_images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserTasksDir(I)Ljava/io/File;
    .registers 3

    .line 529
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "recent_tasks"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$getImageFromWriteQueue$2(Ljava/lang/String;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 2

    .line 252
    iget-object p1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$removeThumbnails$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 3

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$wakeup$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z
    .registers 2

    .line 206
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->-$$Nest$fgetmTask(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/Task;

    move-result-object p1

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static removeObsoleteFile([Ljava/io/File;)V
    .registers 3

    if-nez p0, :cond_a

    const-string p0, "TaskPersister"

    const-string v0, "File error accessing recents directory (directory doesn\'t exist?)."

    .line 630
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 634
    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_16

    .line 635
    aget-object v1, p0, v0

    .line 636
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-void
.end method

.method public static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "TaskPersister"

    if-nez p1, :cond_a

    const-string p0, "File error accessing recents directory (directory doesn\'t exist?)."

    .line 456
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v1, 0x0

    move v2, v1

    .line 459
    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_52

    .line 460
    aget-object v3, p1, v2

    .line 461
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5f

    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_4f

    .line 466
    :try_start_1d
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_33

    .line 473
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 475
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_4f

    .line 469
    :catch_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeObsoleteFiles: Can\'t parse file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_52
    return-void
.end method

.method public static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 1

    .line 517
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 257
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    .line 259
    :try_start_4
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 260
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 262
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 265
    :cond_33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3a} :catch_3b

    return-object p0

    .line 268
    :catch_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t read file "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskPersister"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public flush()V
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->flush()V

    return-void
.end method

.method public final getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 251
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v0, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    if-eqz p0, :cond_14

    .line 253
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 247
    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .registers 3

    .line 521
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_2d

    .line 523
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error while creating user directory: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskPersister"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_2d
    new-instance p0, Ljava/io/File;

    const-string/jumbo p1, "persisted_taskIds.txt"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 11

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p0

    return-object p0

    .line 149
    :cond_15
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 154
    :try_start_1e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_2c} :catch_74
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_53
    .catchall {:try_start_1e .. :try_end_2c} :catchall_51

    .line 155
    :cond_2c
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    const-string v4, "\\s+"

    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_3a
    if-ge v5, v4, :cond_2c

    aget-object v6, v2, v5

    .line 157
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    .line 158
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_46} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_46} :catch_4d
    .catchall {:try_start_2c .. :try_end_46} :catchall_6e

    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 166
    :cond_49
    :goto_49
    :try_start_49
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_82

    goto :goto_77

    :catch_4d
    move-exception v2

    goto :goto_57

    :catch_4f
    move-object v2, v3

    goto :goto_74

    :catchall_51
    move-exception p0

    goto :goto_70

    :catch_53
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_57
    :try_start_57
    const-string v4, "TaskPersister"

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while reading taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_57 .. :try_end_6d} :catchall_6e

    goto :goto_49

    :catchall_6e
    move-exception p0

    move-object v2, v3

    .line 166
    :goto_70
    :try_start_70
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 167
    throw p0

    .line 166
    :catch_74
    :goto_74
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 168
    :goto_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_82

    .line 169
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p0

    return-object p0

    :catchall_82
    move-exception p0

    .line 168
    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public onPreProcessItem(Z)V
    .registers 6

    if-eqz p1, :cond_64

    .line 426
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 427
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->getPersistableTaskIds(Landroid/util/ArraySet;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 431
    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v2

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 432
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 433
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    .line 436
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz p1, :cond_64

    .line 438
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v0

    .line 440
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 441
    array-length p1, v0

    const/4 v1, 0x0

    :goto_46
    if-ge v1, p1, :cond_64

    aget v2, v0, v1

    .line 442
    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/RecentTasks;->getDedicatedProcessCount(I)I

    move-result v3

    if-gtz v3, :cond_55

    .line 443
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskPersister;->removeObsoltedDedicatedProcessFiles(I)V

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :catchall_58
    move-exception p0

    .line 440
    :try_start_59
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_5e
    move-exception p0

    .line 432
    :try_start_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 449
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPersister;->writeTaskIdsFiles()V

    return-void
.end method

.method public final removeObsoleteFiles(Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 507
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object p0

    .line 508
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 509
    array-length v0, p0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_31

    aget v2, p0, v1

    .line 510
    invoke-static {v2}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 511
    invoke-static {v2}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_31
    return-void

    :catchall_32
    move-exception p0

    .line 508
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeObsoltedDedicatedProcessFiles(I)V
    .registers 2

    .line 624
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->getDedicatedTasksDir(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFile([Ljava/io/File;)V

    return-void
.end method

.method public final removeThumbnails(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 136
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v0, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/Task;)V

    const-class p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    return-void
.end method

.method public restoreDedicatedProcessForUserLocked(I)Ljava/util/HashMap;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 731
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 732
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskPersister;->getDedicatedTasksDir(I)Ljava/io/File;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "TaskPersister"

    if-nez v2, :cond_28

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDedicatedProcess.: Unable to list files from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_28
    const/4 v0, 0x0

    move v5, v0

    .line 741
    :goto_2a
    array-length v0, v2

    if-ge v5, v0, :cond_16a

    .line 742
    aget-object v6, v2, v5

    .line 746
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "dedicated_process_task.xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    :goto_3b
    move-object/from16 v7, p0

    goto/16 :goto_162

    .line 753
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 754
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 757
    :cond_48
    :goto_48
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_109

    const/4 v9, 0x3

    if-eq v7, v9, :cond_109

    .line 759
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    if-ne v7, v11, :cond_48

    const-string v12, "dedicated_process"

    .line 762
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ea

    .line 764
    :cond_61
    :goto_61
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v8, :cond_48

    if-eq v7, v9, :cond_48

    if-ne v7, v11, :cond_61

    .line 767
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "task"

    .line 769
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c8

    .line 772
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v7

    sub-int/2addr v7, v8

    move-object v10, v3

    move-object v12, v10

    :goto_7f
    if-ltz v7, :cond_a1

    .line 774
    invoke-interface {v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 775
    invoke-interface {v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "process_name"

    .line 776
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_94

    move-object v10, v14

    goto :goto_9e

    :cond_94
    const-string/jumbo v15, "package_name"

    .line 778
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9e

    move-object v12, v14

    :cond_9e
    :goto_9e
    add-int/lit8 v7, v7, -0x1

    goto :goto_7f

    :cond_a1
    if-eqz v10, :cond_aa

    if-nez v12, :cond_a6

    goto :goto_aa

    .line 786
    :cond_a6
    invoke-virtual {v1, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 783
    :cond_aa
    :goto_aa
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "task: proc="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", pkg="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    .line 789
    :cond_c8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreDedicatedProcess.: Unknown xml event2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " taskName="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :goto_e5
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_61

    .line 796
    :cond_ea
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreDedicatedProcess.: Unknown xml event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " name="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_107} :catch_110
    .catchall {:try_start_3f .. :try_end_107} :catchall_10e

    goto/16 :goto_48

    .line 806
    :cond_109
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_3b

    :catchall_10e
    move-exception v0

    goto :goto_166

    :catch_110
    move-exception v0

    .line 802
    :try_start_111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing file: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_111 .. :try_end_144} :catchall_10e

    .line 806
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting file="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :goto_162
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2a

    .line 806
    :goto_166
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 811
    throw v0

    :cond_16a
    return-object v1
.end method

.method public restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseBooleanArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 288
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 289
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 291
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v5

    .line 293
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    const-string v7, "TaskPersister"

    if-nez v6, :cond_30

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreTasksForUserLocked: Unable to list files from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_30
    const/4 v8, 0x0

    move v9, v8

    .line 299
    :goto_32
    array-length v0, v6

    const/4 v10, 0x1

    if-ge v9, v0, :cond_1f0

    .line 300
    aget-object v11, v6, v9

    .line 306
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "_task.xml"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    move-object/from16 v12, p2

    :goto_46
    move-object/from16 v16, v6

    goto/16 :goto_1e9

    .line 310
    :cond_4a
    :try_start_4a
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x9

    .line 310
    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_60} :catch_1df

    move-object/from16 v12, p2

    .line 313
    :try_start_62
    invoke-virtual {v12, v0, v8}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v13

    if-eqz v13, :cond_82

    .line 314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Task #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has already been created so we don\'t restore again"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_81} :catch_1dd

    goto :goto_46

    .line 324
    :cond_82
    :try_start_82
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_1a4
    .catchall {:try_start_82 .. :try_end_87} :catchall_1a2

    .line 325
    :try_start_87
    invoke-static {v13}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 328
    :goto_8b
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v14

    if-eq v14, v10, :cond_18c

    const/4 v15, 0x3

    if-eq v14, v15, :cond_18c

    .line 330
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const/4 v8, 0x2

    if-ne v14, v8, :cond_17f

    const-string/jumbo v8, "task"

    .line 333
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15f

    .line 334
    iget-object v8, v1, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-static {v0, v8}, Lcom/android/server/wm/Task;->restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_13b

    .line 343
    iget v14, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 344
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v15
    :try_end_b2
    .catchall {:try_start_87 .. :try_end_b2} :catchall_194

    const-string v10, " found"

    if-eqz v15, :cond_d9

    move-object/from16 v16, v6

    .line 345
    :try_start_b8
    iget-object v6, v1, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v14}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_db

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Existing persisted task with taskId "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_181

    :cond_d9
    move-object/from16 v16, v6

    :cond_db
    if-nez v15, :cond_101

    .line 351
    iget-object v6, v1, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v15, 0x1

    .line 352
    invoke-virtual {v6, v14, v15}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_101

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Existing task with taskId "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_181

    .line 357
    :cond_101
    iget v6, v8, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v2, v6, :cond_128

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Task with userId "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " found in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    .line 363
    :cond_128
    iget-object v6, v1, Lcom/android/server/wm/TaskPersister;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6, v14, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->setNextTaskIdForUser(II)V

    const/4 v6, 0x1

    .line 364
    iput-boolean v6, v8, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 365
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_181

    :cond_13b
    move-object/from16 v16, v6

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreTasksForUserLocked: Unable to restore taskFile="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v1, v11}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 369
    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    :cond_15f
    move-object/from16 v16, v6

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreTasksForUserLocked: Unknown xml event="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " name="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    :cond_17f
    move-object/from16 v16, v6

    .line 377
    :goto_181
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_184
    .catchall {:try_start_b8 .. :try_end_184} :catchall_18a

    move-object/from16 v6, v16

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_8b

    :catchall_18a
    move-exception v0

    goto :goto_197

    :cond_18c
    move-object/from16 v16, v6

    .line 379
    :try_start_18e
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_191} :catch_192
    .catchall {:try_start_18e .. :try_end_191} :catchall_1a2

    goto :goto_1e9

    :catch_192
    move-exception v0

    goto :goto_1a7

    :catchall_194
    move-exception v0

    move-object/from16 v16, v6

    :goto_197
    move-object v6, v0

    .line 324
    :try_start_198
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_19b
    .catchall {:try_start_198 .. :try_end_19b} :catchall_19c

    goto :goto_1a1

    :catchall_19c
    move-exception v0

    move-object v8, v0

    :try_start_19e
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a1
    throw v6
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a2} :catch_192
    .catchall {:try_start_19e .. :try_end_1a2} :catchall_1a2

    :catchall_1a2
    move-exception v0

    goto :goto_1dc

    :catch_1a4
    move-exception v0

    move-object/from16 v16, v6

    .line 380
    :goto_1a7
    :try_start_1a7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Error "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failing file: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d8
    .catchall {:try_start_1a7 .. :try_end_1d8} :catchall_1a2

    .line 386
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_1e9

    .line 388
    :goto_1dc
    throw v0

    :catch_1dd
    move-exception v0

    goto :goto_1e2

    :catch_1df
    move-exception v0

    move-object/from16 v12, p2

    :goto_1e2
    move-object/from16 v16, v6

    const-string v6, "Unexpected task file name"

    .line 319
    invoke-static {v7, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v16

    const/4 v8, 0x0

    goto/16 :goto_32

    .line 392
    :cond_1f0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 396
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1fd
    if-ltz v0, :cond_21a

    .line 397
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 398
    iget v4, v2, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 399
    iget v4, v2, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1fd

    .line 402
    :cond_21a
    new-instance v0, Lcom/android/server/wm/TaskPersister$1;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskPersister$1;-><init>(Lcom/android/server/wm/TaskPersister;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3
.end method

.method public saveDedicatedProcessName(Ljava/util/HashMap;ZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0

    .line 643
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;

    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v2, p1, v3, p3}, Lcom/android/server/wm/TaskPersister$DedicatedProcessWriteQueueItem;-><init>(Ljava/util/HashMap;Lcom/android/server/wm/ActivityTaskManagerService;I)V

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 645
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    .line 647
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    return-void

    :catchall_16
    move-exception p0

    .line 645
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .line 233
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    return-void
.end method

.method public final taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    const/4 p0, 0x0

    if-gez p1, :cond_4

    return-object p0

    .line 277
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1a

    .line 278
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 279
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, p1, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 283
    :cond_1a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restore affiliation error looking for taskId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskPersister"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public unloadUserDataFromMemory(I)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public wakeup(Lcom/android/server/wm/Task;Z)V
    .registers 7

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0

    if-eqz p1, :cond_30

    .line 205
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/wm/TaskPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/Task;)V

    const-class v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    if-eqz v1, :cond_1d

    .line 207
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v2, :cond_1d

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->removeThumbnails(Lcom/android/server/wm/Task;)V

    :cond_1d
    if-nez v1, :cond_37

    .line 211
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v1, :cond_37

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    goto :goto_37

    .line 217
    :cond_30
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    sget-object v1, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 223
    :cond_37
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3e

    .line 225
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    return-void

    :catchall_3e
    move-exception p0

    .line 223
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-gez p2, :cond_3

    return-void

    .line 179
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v0

    .line 180
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, 0x0

    .line 183
    :try_start_b
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_3f
    .catchall {:try_start_b .. :try_end_15} :catchall_3d

    const/4 v0, 0x0

    .line 184
    :goto_16
    :try_start_16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 185
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 186
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_3a
    .catchall {:try_start_16 .. :try_end_30} :catchall_37

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 193
    :cond_33
    :try_start_33
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_5f

    goto :goto_59

    :catchall_37
    move-exception p1

    move-object v1, v2

    goto :goto_5b

    :catch_3a
    move-exception p1

    move-object v1, v2

    goto :goto_40

    :catchall_3d
    move-exception p1

    goto :goto_5b

    :catch_3f
    move-exception p1

    :goto_40
    :try_start_40
    const-string v0, "TaskPersister"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while writing taskIds file for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_3d

    .line 193
    :try_start_56
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 195
    :goto_59
    monitor-exit p0

    return-void

    .line 193
    :goto_5b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 194
    throw p1

    :catchall_5f
    move-exception p1

    .line 195
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_56 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public final writeTaskIdsFiles()V
    .registers 10

    .line 482
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 483
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 484
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_40

    aget v6, v2, v5

    .line 485
    iget-object v7, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/RecentTasks;->getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 486
    iget-object v8, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_31

    .line 487
    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    goto :goto_3d

    .line 490
    :cond_31
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 491
    iget-object v8, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 495
    :cond_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 496
    :goto_44
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_5a

    .line 497
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 498
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 497
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_5a
    return-void

    :catchall_5b
    move-exception p0

    .line 495
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
