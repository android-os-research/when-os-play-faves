.class public Lcom/android/server/wm/LaunchParamsPersister;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;,
        Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;
    }
.end annotation


# static fields
.field public static final ESCAPED_COMPONENT_SEPARATOR:C = '-'

.field public static final LAUNCH_PARAMS_DIRNAME:Ljava/lang/String; = "launch_params"

.field public static final LAUNCH_PARAMS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field public static final OLD_ESCAPED_COMPONENT_SEPARATOR:C = '_'

.field public static final ORIGINAL_COMPONENT_SEPARATOR:C = '/'

.field public static final TAG:Ljava/lang/String; = "LaunchParamsPersister"

.field public static final TAG_LAUNCH_PARAMS:Ljava/lang/String; = "launch_params"


# instance fields
.field public final mLaunchParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPackageList:Lcom/android/server/pm/PackageList;

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mUserFolderGetter:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final mWindowLayoutAffinityMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-xaOIWMA5STDO7O8s9cOnB8uyBo(Ljava/lang/String;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->lambda$removeRecordForPackage$2(Ljava/lang/String;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NFFd1vprOhE8FxlUfkIFrf3D97c(Lcom/android/server/wm/LaunchParamsPersister;Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->lambda$saveTask$0(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pJ6-SVIl_J3x4XSIq3M3n4bvyDM(Lcom/android/server/wm/LaunchParamsPersister;Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->lambda$saveFreeformBounds$3(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qFa64I0NmhmHZjNuQ-iK3i1w-QY(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/LaunchParamsPersister;->lambda$addComponentNameToLaunchParamAffinityMapIfNotNull$1(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupervisor(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/wm/ActivityTaskSupervisor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLaunchParamFolder(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetParamFile(Lcom/android/server/wm/LaunchParamsPersister;Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 4

    .line 110
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/IntFunction;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/PersisterQueue;",
            "Lcom/android/server/wm/ActivityTaskSupervisor;",
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 116
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 117
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 118
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    return-void
.end method

.method public static synthetic lambda$addComponentNameToLaunchParamAffinityMapIfNotNull$1(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 1

    .line 327
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$removeRecordForPackage$2(Ljava/lang/String;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .registers 2

    .line 417
    invoke-static {p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->-$$Nest$fgetmComponentName(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$saveFreeformBounds$3(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .registers 3

    .line 467
    new-instance p1, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams-IA;)V

    return-object p1
.end method

.method private synthetic lambda$saveTask$0(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .registers 3

    .line 253
    new-instance p1, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams-IA;)V

    return-object p1
.end method


# virtual methods
.method public final addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 327
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 328
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    :cond_9
    const-string v0, "mLaunchParamsPersister"

    .line 440
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    const/4 v1, 0x0

    .line 442
    :goto_11
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7e

    .line 443
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 446
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_45
    if-ltz v3, :cond_7b

    .line 447
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_45

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 452
    :cond_7e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getLaunchParamFolder(I)Ljava/io/File;
    .registers 3

    .line 431
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    invoke-interface {p0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 432
    new-instance p1, Ljava/io/File;

    const-string v0, "launch_params"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 11

    if-eqz p1, :cond_5

    .line 332
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    goto :goto_7

    :cond_5
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    :goto_7
    if-eqz p1, :cond_c

    .line 333
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_e

    :cond_c
    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    :goto_e
    if-eqz p1, :cond_13

    .line 336
    iget-object p1, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    goto :goto_1d

    .line 338
    :cond_13
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    goto :goto_1d

    .line 339
    :cond_1b
    iget-object p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 342
    :goto_1d
    invoke-virtual {p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 343
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_2b

    return-void

    .line 349
    :cond_2b
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    if-eqz p1, :cond_67

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 353
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 354
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    const/4 v1, 0x0

    .line 355
    :goto_44
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 356
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 357
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    if-nez v2, :cond_59

    goto :goto_64

    :cond_59
    if-eqz v0, :cond_63

    .line 362
    iget-wide v3, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    iget-wide v5, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_64

    :cond_63
    move-object v0, v2

    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_67
    if-nez v0, :cond_6a

    return-void

    .line 373
    :cond_6a
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_7c

    .line 378
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    iput-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 380
    :cond_7c
    iget p0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iput p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 381
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 384
    iget p0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    iput p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 395
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformPersistBoundsParams;->set(Lcom/android/server/wm/FreeformPersistBoundsParams;)V

    return-void
.end method

.method public final getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .registers 4

    .line 425
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x2f

    const/16 v0, 0x2d

    .line 426
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 427
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public final loadLaunchParams(I)V
    .registers 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const-string v5, "LaunchParamsPersister"

    if-nez v4, :cond_2a

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t find launch param folder for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_2a
    new-instance v4, Landroid/util/ArraySet;

    iget-object v6, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 145
    new-instance v7, Landroid/util/ArrayMap;

    array-length v8, v6

    invoke-direct {v7, v8}, Landroid/util/ArrayMap;-><init>(I)V

    .line 147
    iget-object v8, v1, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    array-length v8, v6

    const/4 v9, 0x0

    move v10, v9

    :goto_47
    if-ge v10, v8, :cond_18d

    aget-object v12, v6, v10

    .line 150
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_6d

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is not a file."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    move-object/from16 v16, v3

    goto/16 :goto_186

    .line 154
    :cond_6d
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_95

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected params file name: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 159
    :cond_95
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x5f

    .line 162
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v11, 0x2d

    const/4 v0, -0x1

    if-eq v15, v0, :cond_c5

    add-int/lit8 v15, v15, 0x1

    .line 164
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-eq v15, v0, :cond_b0

    .line 169
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 172
    :cond_b0
    invoke-virtual {v13, v14, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v12, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_c1

    move-object v12, v0

    goto :goto_c5

    .line 180
    :cond_c1
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 186
    :cond_c5
    :goto_c5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    .line 184
    invoke-virtual {v13, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v14, 0x2f

    .line 187
    invoke-virtual {v0, v11, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    if-nez v11, :cond_f4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected file name: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_69

    .line 196
    :cond_f4
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_103

    .line 199
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_69

    .line 203
    :cond_103
    :try_start_103
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_108} :catch_16c

    .line 204
    :try_start_108
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v14, 0x0

    invoke-direct {v0, v1, v14}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams-IA;)V

    .line 205
    invoke-static {v13}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v14

    .line 207
    :goto_112
    invoke-interface {v14}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v15

    const/4 v9, 0x1

    if-eq v15, v9, :cond_14c

    const/4 v9, 0x3

    if-eq v15, v9, :cond_14c

    const/4 v9, 0x2

    if-eq v15, v9, :cond_121

    :goto_11f
    const/4 v9, 0x0

    goto :goto_112

    .line 213
    :cond_121
    invoke-interface {v14}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v15, "launch_params"

    .line 214
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_144

    .line 215
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_132
    .catchall {:try_start_108 .. :try_end_132} :catchall_15c

    move-object/from16 v16, v3

    :try_start_134
    const-string v3, "Unexpected tag name: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_149

    :cond_144
    move-object/from16 v16, v3

    .line 219
    invoke-virtual {v0, v12, v14}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Landroid/util/TypedXmlPullParser;)V

    :goto_149
    move-object/from16 v3, v16

    goto :goto_11f

    :cond_14c
    move-object/from16 v16, v3

    .line 222
    invoke-virtual {v7, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v1, v11, v0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_156
    .catchall {:try_start_134 .. :try_end_156} :catchall_15a

    .line 225
    :try_start_156
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_159} :catch_16a

    goto :goto_186

    :catchall_15a
    move-exception v0

    goto :goto_15f

    :catchall_15c
    move-exception v0

    move-object/from16 v16, v3

    :goto_15f
    move-object v3, v0

    .line 203
    :try_start_160
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_163
    .catchall {:try_start_160 .. :try_end_163} :catchall_164

    goto :goto_169

    :catchall_164
    move-exception v0

    move-object v9, v0

    :try_start_166
    invoke-virtual {v3, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_169
    throw v3
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_16a} :catch_16a

    :catch_16a
    move-exception v0

    goto :goto_16f

    :catch_16c
    move-exception v0

    move-object/from16 v16, v3

    .line 226
    :goto_16f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to restore launch params for "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_186
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    const/4 v9, 0x0

    goto/16 :goto_47

    .line 231
    :cond_18d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19f

    .line 232
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v3, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem-IA;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_19f
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    .line 131
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 122
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 123
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver-IA;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->loadLaunchParams(I)V

    return-void
.end method

.method public removeRecordForPackage(Ljava/lang/String;)V
    .registers 9

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 402
    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_48

    .line 403
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 404
    invoke-virtual {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v2

    .line 405
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 406
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_26
    if-ltz v5, :cond_45

    .line 407
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 408
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 409
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 410
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 415
    :cond_48
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v1

    .line 416
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda4;

    invoke-direct {v4, p1}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {v2, v4, p1}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 420
    iget-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem-IA;)V

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 421
    monitor-exit v1

    return-void

    :catchall_64
    move-exception p0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_4b .. :try_end_66} :catchall_64

    throw p0
.end method

.method public saveFreeformBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V
    .registers 9

    .line 458
    iget-object v3, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 459
    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_18

    .line 463
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 464
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    :cond_18
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 468
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/LaunchParamsPersister;->saveFreeformBoundsToLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z

    move-result p1

    .line 470
    iget-object p2, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz p1, :cond_3d

    .line 473
    iget-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance p2, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem-IA;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_3d
    return-void
.end method

.method public final saveFreeformBoundsToLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z
    .registers 9

    .line 492
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 494
    iget-object v1, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const-string v2, "LaunchParamsPersister"

    const/4 v3, 0x1

    if-eqz v1, :cond_2d

    .line 495
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 496
    iget-object v1, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveFreeformBounds "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 501
    :goto_2e
    iget-object v1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 502
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 503
    invoke-virtual {p2, v4}, Lcom/android/server/wm/DisplayContent;->getBaseDisplayRect(Landroid/graphics/Rect;)V

    .line 504
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_57

    .line 505
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 507
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "saveDisplayBounds "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 510
    :cond_57
    iget p2, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRotation()I

    move-result v1

    if-eq p2, v1, :cond_81

    .line 511
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "saveRotation "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    invoke-static {p0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :cond_81
    move v3, v0

    :goto_82
    if-eqz v3, :cond_92

    .line 517
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    if-nez p0, :cond_8c

    const-string p0, ""

    .line 518
    iput-object p0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 520
    :cond_8c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    :cond_92
    return v3
.end method

.method public saveTask(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 237
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V
    .registers 9

    .line 241
    iget-object v3, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_5

    return-void

    .line 245
    :cond_5
    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1b

    .line 249
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    :cond_1b
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 254
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wm/LaunchParamsPersister;->saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z

    move-result p1

    .line 256
    iget-object p2, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz p1, :cond_40

    .line 259
    iget-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance p2, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem-IA;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_40
    return-void
.end method

.method public final saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z
    .registers 8

    .line 267
    new-instance p0, Landroid/view/DisplayInfo;

    invoke-direct {p0}, Landroid/view/DisplayInfo;-><init>()V

    .line 268
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 270
    iget-object v0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 271
    iget-object p0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object p0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 273
    iget p0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x0

    if-eq p0, v2, :cond_23

    move p0, v1

    goto :goto_24

    :cond_23
    move p0, v3

    :goto_24
    or-int/2addr p0, v0

    .line 274
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iput v0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 278
    iget v0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_36

    move v3, v1

    :cond_36
    or-int/2addr p0, v3

    .line 279
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    .line 303
    iget-object p2, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_53

    .line 304
    iget-object v0, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v1

    or-int/2addr p0, p2

    .line 305
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_60

    .line 307
    :cond_53
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    or-int/2addr p0, p2

    .line 308
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 311
    :goto_60
    iget-object p1, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 312
    iget-object p2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p0, p2

    .line 313
    iput-object p1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz p0, :cond_73

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    :cond_73
    return p0
.end method
