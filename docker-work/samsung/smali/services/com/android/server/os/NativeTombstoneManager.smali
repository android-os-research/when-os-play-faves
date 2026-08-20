.class public final Lcom/android/server/os/NativeTombstoneManager;
.super Ljava/lang/Object;
.source "NativeTombstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;,
        Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NativeTombstoneManager"

.field public static final TOMBSTONE_DIR:Ljava/io/File;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mTombstones:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;


# direct methods
.method public static synthetic $r8$lambda$CZU3Ke3pc6JrL_ptz3vxNw1h-Zk(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/os/NativeTombstoneManager;->lambda$collectTombstones$2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HIZsEl7g0A5yOmsjgTI18eAoNJw(Lcom/android/server/os/NativeTombstoneManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/os/NativeTombstoneManager;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$hxKIlPjaOvpu61iPi9RFSm0nNbA(Lcom/android/server/os/NativeTombstoneManager;IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/os/NativeTombstoneManager;->lambda$collectTombstones$3(IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j2EMu8PBKFmELLuDn3Yy6ygI-D8(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager;->lambda$purge$1(Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/os/NativeTombstoneManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleTombstone(Lcom/android/server/os/NativeTombstoneManager;Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/os/NativeTombstoneManager;->handleTombstone(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpurgePackage(Lcom/android/server/os/NativeTombstoneManager;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager;->purgePackage(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpurgeUser(Lcom/android/server/os/NativeTombstoneManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/os/NativeTombstoneManager;->purgeUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTOMBSTONE_DIR()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 84
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    .line 86
    new-instance p1, Lcom/android/server/ServiceThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":tombstoneWatcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 88
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 89
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance p1, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    invoke-direct {p1, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    .line 92
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method public static synthetic lambda$collectTombstones$2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 4

    .line 298
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_11

    const/4 p0, -0x1

    return p0

    :cond_11
    if-nez p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$collectTombstones$3(IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V
    .registers 20

    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    .line 266
    iget-object v3, v0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 267
    :try_start_8
    iget-object v4, v0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_11
    if-ge v6, v4, :cond_6c

    .line 271
    iget-object v8, v0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v9

    if-eqz v9, :cond_67

    if-eqz v1, :cond_38

    .line 273
    iget v9, v8, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    if-eq v9, v1, :cond_38

    goto :goto_67

    .line 278
    :cond_38
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v5

    :goto_3d
    if-ge v10, v9, :cond_56

    .line 280
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ApplicationExitInfo;

    .line 281
    invoke-virtual {v8, v11}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Landroid/app/ApplicationExitInfo;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 282
    invoke-virtual {v8}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->getPfdRetriever()Landroid/app/IParcelFileDescriptorRetriever;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    goto :goto_67

    :cond_53
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 287
    :cond_56
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v10, p5

    if-ge v9, v10, :cond_69

    .line 289
    invoke-virtual {v8}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->toAppExitInfo()Landroid/app/ApplicationExitInfo;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_69

    :cond_67
    :goto_67
    move/from16 v10, p5

    :cond_69
    :goto_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 293
    :cond_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_8 .. :try_end_6d} :catchall_7e

    if-eqz v7, :cond_77

    .line 296
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_77
    const/4 v0, 0x0

    move-object/from16 v1, p6

    .line 308
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_7e
    move-exception v0

    .line 293
    :try_start_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v0
.end method

.method private synthetic lambda$onSystemReady$0()V
    .registers 4

    .line 101
    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-eqz v0, :cond_1c

    .line 102
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 103
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 104
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/os/NativeTombstoneManager;->handleTombstone(Ljava/io/File;)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method

.method private synthetic lambda$purge$1(Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 7

    .line 185
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_26

    .line 187
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 188
    invoke-virtual {v2, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 189
    invoke-virtual {v2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->purge()V

    .line 190
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 193
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method


# virtual methods
.method public collectTombstones(Ljava/util/ArrayList;III)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;III)V"
        }
    .end annotation

    .line 254
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 256
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 260
    :cond_c
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 261
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 263
    iget-object p2, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;

    move-object v0, v9

    move-object v1, p0

    move v4, p3

    move-object v5, p1

    move v6, p4

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/os/NativeTombstoneManager;IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    :try_start_24
    invoke-virtual {v8}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_27} :catch_28
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    .line 314
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final handleProtoTombstone(Ljava/io/File;Z)Ljava/util/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/Optional<",
            "Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pb"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 130
    sget-object p0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected tombstone name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_28
    const/16 v1, 0xa

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    :try_start_39
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_b7

    if-ltz v0, :cond_9b

    const/16 v1, 0x63

    if-le v0, v1, :cond_44

    goto :goto_9b

    :cond_44
    const/high16 v1, 0x30000000

    .line 151
    :try_start_46
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_4a} :catch_7f

    .line 157
    invoke-static {p1}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->parse(Landroid/os/ParcelFileDescriptor;)Ljava/util/Optional;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 159
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_5c
    if-eqz p2, :cond_7e

    .line 164
    iget-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 165
    :try_start_61
    iget-object p2, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    if-eqz p2, :cond_6e

    .line 167
    invoke-virtual {p2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->dispose()V

    .line 170
    :cond_6e
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    monitor-exit p1

    goto :goto_7e

    :catchall_7b
    move-exception p0

    monitor-exit p1
    :try_end_7d
    .catchall {:try_start_61 .. :try_end_7d} :catchall_7b

    throw p0

    :cond_7e
    :goto_7e
    return-object v1

    :catch_7f
    move-exception p0

    .line 153
    sget-object p2, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 141
    :cond_9b
    :goto_9b
    :try_start_9b
    sget-object p0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected tombstone name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_9b .. :try_end_b6} :catch_b7

    return-object p0

    .line 145
    :catch_b7
    sget-object p0, Lcom/android/server/os/NativeTombstoneManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected tombstone name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final handleTombstone(Ljava/io/File;)V
    .registers 7

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tombstone_"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    const-string v1, ".pb"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v2, p1

    goto :goto_30

    .line 118
    :cond_18
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    :goto_30
    invoke-virtual {p0, v2, v0}, Lcom/android/server/os/NativeTombstoneManager;->handleProtoTombstone(Ljava/io/File;Z)Ljava/util/Optional;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 122
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-virtual {v1}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->getProcessName()Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    :cond_45
    const-string v1, "UNKNOWN"

    .line 124
    :goto_47
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BootReceiver;->addTombstoneToDropBox(Landroid/content/Context;Ljava/io/File;ZLjava/lang/String;)V

    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/android/server/os/NativeTombstoneManager;->registerForUserRemoval()V

    .line 97
    invoke-virtual {p0}, Lcom/android/server/os/NativeTombstoneManager;->registerForPackageRemoval()V

    .line 100
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public purge(Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final purgePackage(IZ)V
    .registers 4

    .line 198
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eqz p2, :cond_b

    .line 201
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_17

    .line 203
    :cond_b
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    .line 205
    :goto_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public final purgeUser(I)V
    .registers 3

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public final registerForPackageRemoval()V
    .registers 5

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/os/NativeTombstoneManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/os/NativeTombstoneManager$1;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForUserRemoval()V
    .registers 5

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/os/NativeTombstoneManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/os/NativeTombstoneManager$2;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
