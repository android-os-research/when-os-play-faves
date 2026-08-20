.class public Lcom/android/server/sepunion/SemUnionMainServiceImpl;
.super Lcom/samsung/android/sepunion/IUnionManager$Stub;
.source "SemUnionMainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field public static final sDumpInformationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sLock:Ljava/lang/Object;

.field public static final sPendingSepUnionServiceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IServiceCreator;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSemSystemServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/AbsSemSystemService;",
            ">;"
        }
    .end annotation
.end field

.field public static final sUnionIbinderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBootCompleted:Z

.field public final mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddSepUnionServiceMapInternal(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->addSepUnionServiceMapInternal(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsSemSystemServiceMap()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsUnionIbinderMap()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 67
    const-class v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    .line 86
    new-instance v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;-><init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 159
    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->initializeSystemMapData()V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->createServiceByStartType()V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->makeDirectoryForAppLog()V

    return-void
.end method

.method public static getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 4

    .line 202
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 204
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz p0, :cond_15

    .line 206
    monitor-exit v0

    return-object p0

    .line 209
    :cond_15
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method


# virtual methods
.method public final addSepUnionServiceMapInternal(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    .line 239
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSepUnionServiceMapInternal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_19
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 242
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_57

    const/4 v2, 0x1

    :try_start_28
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4b

    .line 246
    check-cast p2, Lcom/android/server/sepunion/AbsSemSystemService;

    .line 247
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    move-object v1, p2

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p0}, Lcom/android/server/sepunion/AbsSemSystemService;->onCreate(Landroid/os/Bundle;)V

    goto :goto_55

    :cond_4b
    const-string p1, "addSepUnionServiceMapInternal : obj is NULL"

    .line 251
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_50} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_50} :catch_51
    .catch Ljava/lang/InstantiationException; {:try_start_28 .. :try_end_50} :catch_51
    .catchall {:try_start_28 .. :try_end_50} :catchall_57

    goto :goto_55

    :catch_51
    move-exception p0

    .line 254
    :try_start_52
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 257
    :cond_55
    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final createPendingSepUnionService(Ljava/lang/String;)V
    .registers 5

    .line 214
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    new-instance v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;

    invoke-direct {v2, p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$SepUnionServiceCreator;-><init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final createServiceByStartType()V
    .registers 4

    .line 182
    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2e

    .line 185
    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->createSemSystemService(Ljava/lang/String;)V

    goto :goto_a

    .line 187
    :cond_2e
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->createPendingSepUnionService(Ljava/lang/String;)V

    goto :goto_a

    :cond_32
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 451
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 453
    :cond_b
    array-length v0, p3

    if-gtz v0, :cond_12

    .line 455
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 462
    :cond_12
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_15
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p3, v3

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_28

    move v5, v3

    move v2, v4

    goto :goto_3b

    .line 465
    :cond_28
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    aget-object v5, p3, v3

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move v2, v3

    move v5, v4

    goto :goto_3b

    :cond_39
    move v2, v3

    move v5, v2

    .line 468
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_96

    if-eqz v2, :cond_60

    .line 471
    monitor-enter v0

    .line 473
    :try_start_3f
    aget-object p0, p3, v3

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz p0, :cond_5b

    .line 476
    array-length v1, p3

    if-ne v1, v4, :cond_51

    const/4 p3, 0x0

    .line 477
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_5b

    .line 479
    :cond_51
    array-length v1, p3

    invoke-static {p3, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 482
    :cond_5b
    :goto_5b
    monitor-exit v0

    goto :goto_95

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3f .. :try_end_5f} :catchall_5d

    throw p0

    :cond_60
    if-eqz v5, :cond_83

    .line 485
    monitor-enter v0

    .line 486
    :try_start_63
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 487
    aget-object p1, p3, v3

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_7e

    .line 489
    :cond_79
    aget-object v1, p3, v3

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpHistoryLog(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 491
    :goto_7e
    monitor-exit v0

    goto :goto_95

    :catchall_80
    move-exception p0

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_63 .. :try_end_82} :catchall_80

    throw p0

    .line 492
    :cond_83
    aget-object v0, p3, v3

    const-string/jumbo v1, "servicelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 493
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpServiceList(Ljava/io/PrintWriter;)V

    goto :goto_95

    .line 496
    :cond_92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_95
    return-void

    :catchall_96
    move-exception p0

    .line 468
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p0
.end method

.method public final dumpFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 553
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    .line 556
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This log file does not exist : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 560
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n##### DUMP OF "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #####\n##### (dumpsys sepunion "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") #####\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 567
    :try_start_44
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_49} :catch_9e
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_95
    .catchall {:try_start_44 .. :try_end_49} :catchall_8f

    .line 568
    :try_start_49
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4e} :catch_8c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_89
    .catchall {:try_start_49 .. :try_end_4e} :catchall_86

    .line 569
    :try_start_4e
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_53} :catch_82
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_53} :catch_7e
    .catchall {:try_start_4e .. :try_end_53} :catchall_7a

    .line 571
    :try_start_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 575
    :goto_59
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6e

    const/16 v3, 0x1f4

    if-gt v1, v3, :cond_6e

    .line 576
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 577
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 580
    :cond_6e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_75} :catch_78
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_75} :catch_76
    .catchall {:try_start_53 .. :try_end_75} :catchall_b0

    goto :goto_a6

    :catch_76
    move-exception p1

    goto :goto_9a

    :catch_78
    move-exception p1

    goto :goto_a3

    :catchall_7a
    move-exception p3

    move-object v0, p1

    move-object p1, p3

    goto :goto_b1

    :catch_7e
    move-exception p3

    move-object v0, p1

    move-object p1, p3

    goto :goto_9a

    :catch_82
    move-exception p3

    move-object v0, p1

    move-object p1, p3

    goto :goto_a3

    :catchall_86
    move-exception p0

    move-object v0, p1

    goto :goto_92

    :catch_89
    move-exception p0

    move-object v0, p1

    goto :goto_98

    :catch_8c
    move-exception p0

    move-object v0, p1

    goto :goto_a1

    :catchall_8f
    move-exception p0

    move-object p2, p1

    move-object v0, p2

    :goto_92
    move-object p1, p0

    move-object p0, v0

    goto :goto_b1

    :catch_95
    move-exception p0

    move-object p2, p1

    move-object v0, p2

    :goto_98
    move-object p1, p0

    move-object p0, v0

    .line 585
    :goto_9a
    :try_start_9a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    :catch_9e
    move-exception p0

    move-object p2, p1

    move-object v0, p2

    :goto_a1
    move-object p1, p0

    move-object p0, v0

    .line 583
    :goto_a3
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_9a .. :try_end_a6} :catchall_b0

    .line 587
    :goto_a6
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 588
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 589
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_b0
    move-exception p1

    .line 587
    :goto_b1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 588
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 589
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 590
    throw p1
.end method

.method public final dumpHistoryLog(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 597
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n##### DUMP OF "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #####\n##### (dumpsys sepunion "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") #####\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string v0, "\n##### SEP UNION Main SERVICE #####\n##### (dumpsys sepunion) #####\n"

    .line 502
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpServiceList(Ljava/io/PrintWriter;)V

    .line 506
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_b
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 509
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v2, :cond_15

    .line 511
    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/sepunion/AbsSemSystemService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_15

    .line 516
    :cond_2d
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 517
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 518
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_55

    .line 520
    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_37

    .line 522
    :cond_55
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->dumpHistoryLog(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_37

    .line 525
    :cond_59
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_b .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public final dumpServiceList(Ljava/io/PrintWriter;)V
    .registers 8

    const-string p0, ""

    const-string v0, ""

    .line 533
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_7
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 535
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    add-int/lit8 v3, v3, 0x1

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    .line 540
    :cond_41
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 545
    :cond_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_7 .. :try_end_79} :catchall_b6

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of SEP Union service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEP Union service list(activated) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEP Union service list(pending) : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_b6
    move-exception p0

    .line 545
    :try_start_b7
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw p0
.end method

.method public final enforeCallingPermission(Ljava/lang/String;)V
    .registers 4

    .line 415
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 416
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_13

    return-void

    .line 420
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denied: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callingUid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 422
    sget-object p1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 4

    .line 194
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Landroid/content/Context;

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 6

    .line 280
    sget-object p2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSemSystemService - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_1a
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_26

    .line 284
    monitor-exit v0

    return-object v1

    .line 286
    :cond_26
    iget-boolean v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    if-nez v1, :cond_33

    const-string/jumbo p0, "getSemSystemService : boot is not completed"

    .line 287
    invoke-static {p2, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 288
    monitor-exit v0

    return-object p0

    .line 291
    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSepUnionService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSemSystemService - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    monitor-exit v0

    return-object p0

    :catchall_56
    move-exception p0

    .line 294
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_1a .. :try_end_58} :catchall_56

    throw p0
.end method

.method public final getSepUnionService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 7

    .line 221
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sPendingSepUnionServiceCreators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IServiceCreator;

    if-nez v2, :cond_10

    const/4 p0, 0x0

    .line 224
    monitor-exit v0

    return-object p0

    .line 226
    :cond_10
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_27

    .line 230
    :try_start_17
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v2, p0}, Landroid/os/IServiceCreator;->createService(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_22

    .line 232
    :try_start_1d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    .line 232
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    throw p0

    :catchall_27
    move-exception p0

    .line 234
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final initializeSystemMapData()V
    .registers 6

    .line 168
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    sget-object v1, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getConstructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    sget-object v4, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sUnionIbinderMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 178
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final makeDirectoryForAppLog()V
    .registers 3

    .line 408
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/log/sepunion/"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x1ff

    const/4 v1, -0x1

    .line 410
    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_19
    return-void
.end method

.method public onBootPhase(I)V
    .registers 5

    .line 315
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 317
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v2, :cond_d

    .line 319
    invoke-interface {v2, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onBootPhase(I)V

    goto :goto_d

    :cond_25
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_30

    .line 322
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    if-nez p1, :cond_30

    const/4 p1, 0x1

    .line 323
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    .line 325
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p4

    .line 430
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    const/16 v3, 0x7d0

    if-ne v1, v3, :cond_d

    goto :goto_1b

    :cond_d
    const/4 v0, -0x1

    move-object/from16 v1, p6

    .line 432
    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 433
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Shell commands are only callable by ADB"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_1b
    move-object/from16 v1, p6

    .line 436
    sget-object v10, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 437
    :try_start_20
    array-length v3, v0

    if-lez v3, :cond_4b

    .line 438
    sget-object v3, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v3, :cond_4b

    .line 440
    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    :goto_34
    move-object v7, v2

    goto :goto_3f

    :cond_36
    array-length v2, v0

    invoke-static {p4, v5, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    goto :goto_34

    :goto_3f
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 441
    invoke-interface/range {v3 .. v9}, Lcom/android/server/sepunion/AbsSemSystemService;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 442
    monitor-exit v10

    return-void

    .line 445
    :cond_4b
    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_20 .. :try_end_4c} :catchall_50

    .line 446
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sepunion/IUnionManager$Stub;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return-void

    :catchall_50
    move-exception v0

    .line 445
    :try_start_51
    monitor-exit v10
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0
.end method

.method public onUserStarting(I)V
    .registers 5

    .line 332
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onUserStarting"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 334
    :try_start_b
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_15

    .line 336
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_15

    .line 337
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStarting(I)V

    goto :goto_15

    .line 340
    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p1
.end method

.method public onUserStopped(I)V
    .registers 5

    .line 392
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onUserStopped"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 394
    :try_start_b
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 395
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_15

    .line 396
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_15

    .line 397
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStopped(I)V

    goto :goto_15

    .line 400
    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p1
.end method

.method public onUserStopping(I)V
    .registers 5

    .line 380
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onUserStopping"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 382
    :try_start_b
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 383
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_15

    .line 384
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_15

    .line 385
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStopping(I)V

    goto :goto_15

    .line 388
    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p1
.end method

.method public onUserSwitching(II)V
    .registers 6

    .line 368
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onUserSwitching"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 370
    :try_start_b
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_15

    .line 372
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_15

    .line 373
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1, p2}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserSwitching(II)V

    goto :goto_15

    .line 376
    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p1
.end method

.method public onUserUnlocked(I)V
    .registers 5

    .line 356
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onUserUnlocked"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 358
    :try_start_b
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_15

    .line 360
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_15

    .line 361
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserUnlocked(I)V

    goto :goto_15

    .line 364
    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p1
.end method

.method public onUserUnlocking(I)V
    .registers 5

    .line 344
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onUserUnlocking"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 346
    :try_start_b
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_15

    .line 348
    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_15

    .line 349
    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserUnlocking(I)V

    goto :goto_15

    .line 352
    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p1
.end method

.method public setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 302
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDumpEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "setDumpEnabled"

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->enforeCallingPermission(Ljava/lang/String;)V

    .line 305
    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 306
    :try_start_20
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sDumpInformationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string/jumbo p1, "setDumpEnabled Already Exist"

    .line 307
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 309
    :cond_33
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :goto_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_38

    throw p1
.end method
