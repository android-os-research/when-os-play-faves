.class public Lcom/android/server/wm/TaskSnapshotPersister;
.super Ljava/lang/Object;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$CloseBufferWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    }
.end annotation


# static fields
.field public static final BITMAP_EXTENSION:Ljava/lang/String; = ".jpg"

.field public static final DELAY_MS:J = 0x64L

.field public static final LOW_RES_FILE_POSTFIX:Ljava/lang/String; = "_reduced"

.field public static final MAX_STORE_QUEUE_DEPTH:I = 0x2

.field public static final PROTO_EXTENSION:Ljava/lang/String; = ".proto"

.field public static final QUALITY:I = 0x5f

.field public static final SNAPSHOTS_DIRNAME:Ljava/lang/String; = "snapshots"

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

.field public mEnableLowResSnapshots:Z

.field public final mLock:Ljava/lang/Object;

.field public final mLowResScaleFactor:F

.field public mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPersister:Ljava/lang/Thread;

.field public mQueueIdling:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mStarted:Z

.field public final mStoreQueueItems:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mUse16BitFormat:Z

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWriteQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEnableLowResSnapshots(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowResScaleFactor(Lcom/android/server/wm/TaskSnapshotPersister;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPaused(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistedTaskIdsSinceLastRemoveObsolete(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStoreQueueItems(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManagerInternal(Lcom/android/server/wm/TaskSnapshotPersister;)Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWriteQueue(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmQueueIdling(Lcom/android/server/wm/TaskSnapshotPersister;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateDirectory(Lcom/android/server/wm/TaskSnapshotPersister;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->createDirectory(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdeleteSnapshot(Lcom/android/server/wm/TaskSnapshotPersister;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->deleteSnapshot(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDirectory(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V
    .registers 7

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 288
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister$1;

    const-string v1, "TaskSnapshotPersister"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister$1;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    .line 96
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    .line 97
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 99
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10500b8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    .line 101
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_95

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v0

    if-lez v3, :cond_95

    cmpg-float v3, p2, v1

    if-lez v3, :cond_8d

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_8d

    cmpg-float v2, p2, v0

    if-lez v2, :cond_85

    cmpl-float v2, v0, v1

    if-lez v2, :cond_70

    div-float/2addr v0, p2

    .line 115
    iput v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    const/4 p2, 0x1

    .line 116
    iput-boolean p2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    goto :goto_75

    .line 118
    :cond_70
    iput v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    const/4 p2, 0x0

    .line 119
    iput-boolean p2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    .line 122
    :goto_75
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101ed

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUse16BitFormat:Z

    return-void

    .line 111
    :cond_85
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be greater than low-res scale"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_8d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_95
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Low-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final createDirectory(I)Z
    .registers 2

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final deleteSnapshot(II)V
    .registers 5

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v0

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 275
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 278
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 280
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_21
    return-void
.end method

.method public enableLowResSnapshots()Z
    .registers 1

    .line 199
    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    return p0
.end method

.method public final ensureStoreQueueDepthLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_31

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue is too deep! Purged item with taskid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->-$$Nest$fgetmTaskId(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_31
    return-void
.end method

.method public final getDirectory(I)Ljava/io/File;
    .registers 3

    .line 250
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    invoke-interface {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "snapshots"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHighResolutionBitmapFile(II)Ljava/io/File;
    .registers 4

    .line 258
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLowResolutionBitmapFile(II)Ljava/io/File;
    .registers 4

    .line 263
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_reduced"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getProtoFile(II)Ljava/io/File;
    .registers 4

    .line 254
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".proto"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public onTaskRemovedFromRecents(II)V
    .registers 6

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 160
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onTaskRemovedFromRecentsBuffer(Landroid/hardware/HardwareBuffer;)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$CloseBufferWriteQueueItem;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister$CloseBufferWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/hardware/HardwareBuffer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 170
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public persistSnapshot(IILandroid/window/TaskSnapshot;)V
    .registers 7

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/window/TaskSnapshot;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 147
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public removeObsoleteFiles(Landroid/util/ArraySet;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 185
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 186
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onQueuedLocked()V

    .line 234
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister;->ensureStoreQueueDepthLocked()V

    .line 235
    iget-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    if-nez p1, :cond_14

    .line 236
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_14
    return-void
.end method

.method public setPaused(Z)V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    if-nez p1, :cond_c

    .line 193
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 195
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public start()V
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    .line 132
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_c
    return-void
.end method

.method public use16BitFormat()Z
    .registers 3

    const-string/jumbo v0, "persist.use.low.snapshot.memory"

    const/4 v1, 0x0

    .line 210
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 215
    :cond_c
    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUse16BitFormat:Z

    return p0
.end method

.method public waitForQueueEmpty()V
    .registers 3

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    if-eqz v1, :cond_11

    .line 223
    monitor-exit v0

    return-void

    .line 225
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    const-wide/16 v0, 0x64

    .line 226
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :catchall_18
    move-exception p0

    .line 225
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method
