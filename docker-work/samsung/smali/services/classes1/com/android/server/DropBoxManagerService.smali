.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;,
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;,
        Lcom/android/server/DropBoxManagerService$SimpleEntrySource;,
        Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;,
        Lcom/android/server/DropBoxManagerService$ShellCmd;
    }
.end annotation


# static fields
.field public static final COMPRESS_THRESHOLD_BYTES:J = 0x4000L

.field public static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field public static final DEFAULT_MAX_FILES:I = 0x3e8

.field public static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field public static final DEFAULT_QUOTA_KB:I = 0x2800

.field public static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field public static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field public static final PROFILE_DUMP:Z = false

.field public static final PROTO_MAX_DATA_BYTES:I = 0x40000

.field public static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field public mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field public mBlockSize:I

.field public volatile mBooted:Z

.field public mCachedQuotaBlocks:I

.field public mCachedQuotaUptimeMillis:J

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDropBoxDir:Ljava/io/File;

.field public mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

.field public mLowPriorityRateLimitPeriod:J

.field public mLowPriorityTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxFiles:I

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mStatFs:Landroid/os/StatFs;

.field public final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBooted(Lcom/android/server/DropBoxManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowPriorityRateLimitPeriod(Lcom/android/server/DropBoxManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmReceiver(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCachedQuotaUptimeMillis(Lcom/android/server/DropBoxManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->addLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minit(Lcom/android/server/DropBoxManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->removeLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreDefaults(Lcom/android/server/DropBoxManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->restoreDefaults()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLowPriorityRateLimit(Lcom/android/server/DropBoxManagerService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DropBoxManagerService;->setLowPriorityRateLimit(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtrimToFit(Lcom/android/server/DropBoxManagerService;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 334
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 346
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 117
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 119
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 120
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 124
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    const/4 v2, 0x0

    .line 125
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 126
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 127
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 129
    iput-boolean v2, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 137
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 347
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 348
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 349
    new-instance p2, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    .line 350
    const-class p2, Lcom/android/server/DropBoxManagerInternal;

    new-instance p3, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;

    invoke-direct {p3, p0, p1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;-><init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl-IA;)V

    invoke-static {p2, p3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .registers 10

    .line 393
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p2, p2

    int-to-long v3, p2

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V

    return-void
.end method

.method public addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V
    .registers 12

    const-string v0, "DropBoxManagerService"

    const/4 v1, 0x0

    .line 467
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isTagEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_d8

    .line 471
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3a} :catch_e0
    .catchall {:try_start_3 .. :try_end_3a} :catchall_de

    if-nez v2, :cond_40

    .line 510
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 477
    :cond_40
    :try_start_40
    invoke-interface {p2}, Lcom/android/server/DropBoxManagerInternal$EntrySource;->length()J

    move-result-wide v2

    .line 478
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_77

    .line 481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_ab

    .line 483
    :cond_77
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_9c} :catch_e0
    .catchall {:try_start_40 .. :try_end_9c} :catchall_de

    .line 484
    :try_start_9c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a1} :catch_d5
    .catchall {:try_start_9c .. :try_end_a1} :catchall_d2

    .line 485
    :try_start_a1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/android/server/DropBoxManagerInternal$EntrySource;->writeTo(Ljava/io/FileDescriptor;)V
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_c8

    .line 486
    :try_start_a8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 490
    :goto_ab
    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_af} :catch_d5
    .catchall {:try_start_a8 .. :try_end_af} :catchall_d2

    .line 497
    :try_start_af
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    if-eqz p3, :cond_bf

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_bf

    .line 499
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {p3, p1, v2, v3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->maybeDeferBroadcast(Ljava/lang/String;J)V

    goto :goto_c4

    .line 501
    :cond_bf
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {p3, p1, v2, v3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendBroadcast(Ljava/lang/String;J)V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_c4} :catch_e0
    .catchall {:try_start_af .. :try_end_c4} :catchall_de

    .line 510
    :goto_c4
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_103

    :catchall_c8
    move-exception p3

    .line 484
    :try_start_c9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_d1

    :catchall_cd
    move-exception v1

    :try_start_ce
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d1
    throw p3
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d2} :catch_d5
    .catchall {:try_start_ce .. :try_end_d2} :catchall_d2

    :catchall_d2
    move-exception p0

    move-object v1, v2

    goto :goto_104

    :catch_d5
    move-exception p3

    move-object v1, v2

    goto :goto_e1

    .line 469
    :cond_d8
    :try_start_d8
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-direct {p3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p3
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_de} :catch_e0
    .catchall {:try_start_d8 .. :try_end_de} :catchall_de

    :catchall_de
    move-exception p0

    goto :goto_104

    :catch_e0
    move-exception p3

    .line 504
    :goto_e1
    :try_start_e1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x5

    const-wide/16 v2, 0x0

    .line 505
    invoke-virtual {p0, p3, p1, v2, v3}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V
    :try_end_fb
    .catchall {:try_start_e1 .. :try_end_fb} :catchall_de

    .line 510
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v1, :cond_103

    .line 511
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_103
    :goto_103
    return-void

    .line 510
    :goto_104
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v1, :cond_10c

    .line 511
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 512
    :cond_10c
    throw p0
.end method

.method public addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V
    .registers 8

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_e

    const-wide/16 v0, 0x4000

    cmp-long v0, p3, v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    or-int/lit8 p5, p5, 0x4

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 422
    :goto_f
    new-instance v1, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;

    invoke-direct {v1, p2, p3, p4, v0}, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;-><init>(Ljava/io/InputStream;JZ)V

    invoke-virtual {p0, p1, v1, p5}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    return-void
.end method

.method public addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .registers 12

    .line 399
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 402
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_e} :catch_35

    if-eqz v1, :cond_1e

    .line 409
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-wide v5, v0, Landroid/system/StructStat;->st_size:J

    move-object v2, p0

    move-object v3, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V

    return-void

    .line 403
    :cond_1e
    :try_start_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " entry must be real file"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_35
    .catch Landroid/system/ErrnoException; {:try_start_1e .. :try_end_35} :catch_35

    :catch_35
    move-exception p0

    .line 406
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final declared-synchronized addLowPriorityTag(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 597
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 598
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final checkPermission(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .line 534
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PEEK_DROPBOX_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    .line 540
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.READ_LOGS"

    const-string v3, "DropBoxManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AppOpsManager;

    const/16 v5, 0x2b

    const/4 v9, 0x0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_40

    const/4 p2, 0x3

    if-eq p1, p2, :cond_37

    const/4 p0, 0x0

    return p0

    .line 550
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return v1
.end method

.method public final declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1077
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1083
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    const/4 v4, 0x0

    .line 1085
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1086
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1087
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1090
    :cond_2d
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const-wide/16 v5, 0x1

    if-nez v0, :cond_4a

    .line 1091
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_4a
    if-eqz v4, :cond_ac

    .line 1095
    array-length v0, v4

    const/4 v7, 0x0

    move-wide v12, v2

    :goto_4f
    if-ge v7, v0, :cond_ab

    aget-object v2, v4, v7

    .line 1096
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1097
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v8, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    if-eqz v3, :cond_77

    .line 1098
    iget-object v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v8, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 1099
    iget v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1101
    :cond_77
    iget v3, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_99

    .line 1102
    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v11, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v16, v12, v5

    iget v14, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v15, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-virtual {v1, v3}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v12, v16

    goto :goto_a8

    .line 1105
    :cond_99
    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v9, v12, v5

    invoke-direct {v3, v8, v2, v12, v13}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v12, v9

    :goto_a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    :cond_ab
    move-wide v2, v12

    :cond_ac
    if-nez p1, :cond_bb

    .line 1111
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v4, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_d6

    :cond_bb
    move-object/from16 v5, p2

    .line 1113
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v4, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object v14, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move-object/from16 v17, p2

    move-wide/from16 v18, v2

    move/from16 v20, p3

    move/from16 v21, v6

    invoke-direct/range {v14 .. v21}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-virtual {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_d6
    .catchall {:try_start_3 .. :try_end_d6} :catchall_d8

    .line 1115
    :goto_d6
    monitor-exit p0

    return-wide v2

    :catchall_d8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 609
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_35c

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    .line 612
    :cond_15
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_33d
    .catchall {:try_start_15 .. :try_end_18} :catchall_35c

    .line 621
    :try_start_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_26
    const/4 v10, 0x1

    if-eqz v3, :cond_c4

    .line 625
    array-length v11, v3

    if-ge v0, v11, :cond_c4

    .line 626
    aget-object v11, v3, v0

    const-string v12, "-p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_bf

    aget-object v11, v3, v0

    const-string v12, "--print"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_42

    goto/16 :goto_bf

    .line 628
    :cond_42
    aget-object v11, v3, v0

    const-string v12, "-f"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_bd

    aget-object v11, v3, v0

    const-string v12, "--file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_57

    goto :goto_bd

    .line 630
    :cond_57
    aget-object v11, v3, v0

    const-string v12, "--proto"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_63

    move v7, v10

    goto :goto_c0

    .line 632
    :cond_63
    aget-object v10, v3, v0

    const-string v11, "-h"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_98

    aget-object v10, v3, v0

    const-string v11, "--help"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_78

    goto :goto_98

    .line 641
    :cond_78
    aget-object v10, v3, v0

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_92

    const-string v10, "Unknown argument: "

    .line 642
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v3, v0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c0

    .line 644
    :cond_92
    aget-object v10, v3, v0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    :cond_98
    :goto_98
    const-string v0, "Dropbox (dropbox) dump options:"

    .line 633
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    .line 634
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -h|--help: print this help"

    .line 635
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -p|--print: print full contents of each entry"

    .line 636
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -f|--file: print path of each entry\'s file"

    .line 637
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    --proto: dump data to proto"

    .line 638
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [timestamp] optionally filters to only those entries."

    .line 639
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_18 .. :try_end_bb} :catchall_35c

    .line 640
    monitor-exit p0

    return-void

    :cond_bd
    :goto_bd
    move v9, v10

    goto :goto_c0

    :cond_bf
    :goto_bf
    move v8, v10

    :goto_c0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    :cond_c4
    if-eqz v7, :cond_cd

    move-object/from16 v0, p1

    .line 649
    :try_start_c8
    invoke-virtual {v1, v0, v5}, Lcom/android/server/DropBoxManagerService;->dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_35c

    .line 650
    monitor-exit p0

    return-void

    :cond_cd
    :try_start_cd
    const-string v0, "Drop box contents: "

    .line 653
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Max entries: "

    .line 654
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Low priority rate limit period: "

    .line 656
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget-wide v11, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Low priority tags: "

    .line 658
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_138

    const-string v0, "Searching for:"

    .line 661
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_133

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11e

    :cond_133
    const-string v0, "\n"

    .line 663
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_138
    const-string v0, "\n"

    .line 667
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v0, 0x0

    :goto_146
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_31c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 669
    invoke-virtual {v1, v11, v5}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_159

    goto :goto_146

    :cond_159
    add-int/lit8 v12, v0, 0x1

    if-eqz v8, :cond_162

    const-string v0, "========================================\n"

    .line 672
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_162
    iget-wide v13, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v13, v14}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_176

    const-string v0, "(no tag)"

    :cond_176
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    if-nez v15, :cond_18b

    const-string v0, " (no file)\n"

    .line 679
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_186
    move-object/from16 p1, v7

    const/4 v13, 0x0

    goto/16 :goto_317

    .line 681
    :cond_18b
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_196

    const-string v0, " (contents lost)\n"

    .line 682
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_186

    :cond_196
    const-string v0, " ("

    .line 685
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1a6

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_1a6
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b0

    const-string/jumbo v0, "text"

    goto :goto_1b2

    :cond_1b0
    const-string v0, "data"

    :goto_1b2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    .line 688
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_1d0

    if-eqz v8, :cond_1e3

    .line 691
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1e3

    :cond_1d0
    if-nez v8, :cond_1d7

    const-string v0, "    "

    .line 692
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_1d7
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_1e3
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_1e5
    .catchall {:try_start_cd .. :try_end_1e5} :catchall_35c

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_30d

    if-nez v8, :cond_1ed

    if-nez v9, :cond_30d

    :cond_1ed
    const/16 v19, 0x0

    .line 700
    :try_start_1ef
    new-instance v14, Landroid/os/DropBoxManager$Entry;

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f3} :catch_2c5
    .catchall {:try_start_1ef .. :try_end_1f3} :catchall_2c1

    move-object/from16 p1, v7

    :try_start_1f5
    iget-wide v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v11, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1f9} :catch_2bf
    .catchall {:try_start_1f5 .. :try_end_1f9} :catchall_2c1

    move-object v13, v14

    move-object/from16 v20, v14

    move-object v14, v0

    move-object/from16 v21, v15

    move-wide v15, v6

    move-object/from16 v17, v21

    move/from16 v18, v11

    :try_start_204
    invoke-direct/range {v13 .. v18}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_207} :catch_2bd
    .catchall {:try_start_204 .. :try_end_207} :catchall_2c1

    const/16 v0, 0xa

    if-eqz v8, :cond_270

    .line 704
    :try_start_20b
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual/range {v20 .. v20}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_214
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_214} :catch_268
    .catchall {:try_start_20b .. :try_end_214} :catchall_261

    const/16 v7, 0x1000

    :try_start_216
    new-array v7, v7, [C

    const/4 v11, 0x0

    .line 708
    :goto_219
    invoke-virtual {v6, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v13
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_216 .. :try_end_21d} :catch_25e
    .catchall {:try_start_216 .. :try_end_21d} :catchall_25c

    if-gtz v13, :cond_234

    if-nez v11, :cond_22d

    :try_start_221
    const-string v0, "\n"

    .line 719
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_221 .. :try_end_226} :catch_227
    .catchall {:try_start_221 .. :try_end_226} :catchall_25c

    goto :goto_22d

    :catch_227
    move-exception v0

    move-object/from16 v19, v20

    const/4 v13, 0x0

    goto/16 :goto_2cd

    :cond_22d
    :goto_22d
    move-object/from16 v19, v6

    move-object/from16 v7, v20

    const/4 v13, 0x0

    goto/16 :goto_2a8

    :cond_234
    const/4 v11, 0x0

    .line 710
    :try_start_235
    invoke-virtual {v4, v7, v11, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_238
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_238} :catch_259
    .catchall {:try_start_235 .. :try_end_238} :catchall_25c

    add-int/lit8 v13, v13, -0x1

    .line 711
    :try_start_23a
    aget-char v11, v7, v13

    if-ne v11, v0, :cond_240

    move v11, v10

    goto :goto_241

    :cond_240
    const/4 v11, 0x0

    .line 714
    :goto_241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/high16 v14, 0x10000

    if-le v13, v14, :cond_257

    .line 715
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_23a .. :try_end_250} :catch_25e
    .catchall {:try_start_23a .. :try_end_250} :catchall_25c

    const/4 v13, 0x0

    .line 716
    :try_start_251
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_254
    .catch Ljava/io/IOException; {:try_start_251 .. :try_end_254} :catch_255
    .catchall {:try_start_251 .. :try_end_254} :catchall_25c

    goto :goto_219

    :catch_255
    move-exception v0

    goto :goto_26c

    :cond_257
    const/4 v13, 0x0

    goto :goto_219

    :catch_259
    move-exception v0

    move v13, v11

    goto :goto_26c

    :catchall_25c
    move-exception v0

    goto :goto_264

    :catch_25e
    move-exception v0

    const/4 v13, 0x0

    goto :goto_26c

    :catchall_261
    move-exception v0

    move-object/from16 v6, v19

    :goto_264
    move-object/from16 v19, v20

    goto/16 :goto_302

    :catch_268
    move-exception v0

    const/4 v13, 0x0

    move-object/from16 v6, v19

    :goto_26c
    move-object/from16 v19, v20

    goto/16 :goto_2cd

    :cond_270
    const/4 v13, 0x0

    const/16 v6, 0x46

    move-object/from16 v7, v20

    .line 721
    :try_start_275
    invoke-virtual {v7, v6}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "    "

    .line 722
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_286

    const-string v0, "[null]"

    .line 724
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a3

    .line 726
    :cond_286
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v6, :cond_28e

    move v6, v10

    goto :goto_28f

    :cond_28e
    move v6, v13

    .line 727
    :goto_28f
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x2f

    invoke-virtual {v11, v0, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_2a3

    const-string v0, " ..."

    .line 728
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a3
    :goto_2a3
    const-string v0, "\n"

    .line 730
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a8
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_2a8} :catch_2b7
    .catchall {:try_start_275 .. :try_end_2a8} :catchall_2b1

    .line 736
    :goto_2a8
    :try_start_2a8
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2ab
    .catchall {:try_start_2a8 .. :try_end_2ab} :catchall_35c

    if-eqz v19, :cond_310

    .line 739
    :try_start_2ad
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_2b0
    .catch Ljava/io/IOException; {:try_start_2ad .. :try_end_2b0} :catch_310
    .catchall {:try_start_2ad .. :try_end_2b0} :catchall_35c

    goto :goto_310

    :catchall_2b1
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v19, v7

    goto :goto_302

    :catch_2b7
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v19, v7

    goto :goto_2cd

    :catch_2bd
    move-exception v0

    goto :goto_2ca

    :catch_2bf
    move-exception v0

    goto :goto_2c8

    :catchall_2c1
    move-exception v0

    move-object/from16 v6, v19

    goto :goto_302

    :catch_2c5
    move-exception v0

    move-object/from16 p1, v7

    :goto_2c8
    move-object/from16 v21, v15

    :goto_2ca
    const/4 v13, 0x0

    move-object/from16 v6, v19

    :goto_2cd
    :try_start_2cd
    const-string v7, "*** "

    .line 733
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "DropBoxManagerService"

    .line 734
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t read: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v21

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f6
    .catchall {:try_start_2cd .. :try_end_2f6} :catchall_301

    if-eqz v19, :cond_2fb

    .line 736
    :try_start_2f8
    invoke-virtual/range {v19 .. v19}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2fb
    .catchall {:try_start_2f8 .. :try_end_2fb} :catchall_35c

    :cond_2fb
    if-eqz v6, :cond_310

    .line 739
    :try_start_2fd
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_300
    .catch Ljava/io/IOException; {:try_start_2fd .. :try_end_300} :catch_310
    .catchall {:try_start_2fd .. :try_end_300} :catchall_35c

    goto :goto_310

    :catchall_301
    move-exception v0

    :goto_302
    if-eqz v19, :cond_307

    .line 736
    :try_start_304
    invoke-virtual/range {v19 .. v19}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_307
    .catchall {:try_start_304 .. :try_end_307} :catchall_35c

    :cond_307
    if-eqz v6, :cond_30c

    .line 739
    :try_start_309
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_30c
    .catch Ljava/io/IOException; {:try_start_309 .. :try_end_30c} :catch_30c
    .catchall {:try_start_309 .. :try_end_30c} :catchall_35c

    .line 743
    :catch_30c
    :cond_30c
    :try_start_30c
    throw v0

    :cond_30d
    move-object/from16 p1, v7

    const/4 v13, 0x0

    :catch_310
    :cond_310
    :goto_310
    if-eqz v8, :cond_317

    const-string v0, "\n"

    .line 746
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_317
    :goto_317
    move-object/from16 v7, p1

    move v0, v12

    goto/16 :goto_146

    :cond_31c
    if-nez v0, :cond_323

    const-string v0, "(No entries found.)\n"

    .line 749
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_323
    if-eqz v3, :cond_328

    .line 751
    array-length v0, v3

    if-nez v0, :cond_334

    :cond_328
    if-nez v8, :cond_32f

    const-string v0, "\n"

    .line 752
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32f
    const-string v0, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    .line 753
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_334
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_33b
    .catchall {:try_start_30c .. :try_end_33b} :catchall_35c

    .line 758
    monitor-exit p0

    return-void

    :catch_33d
    move-exception v0

    move-object v3, v0

    .line 614
    :try_start_33f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DropBoxManagerService"

    const-string v2, "Can\'t init"

    .line 615
    invoke-static {v0, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35a
    .catchall {:try_start_33f .. :try_end_35a} :catchall_35c

    .line 616
    monitor-exit p0

    return-void

    :catchall_35c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 772
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 774
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object p1, p1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 775
    invoke-virtual {p0, v1, p2}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_d

    .line 777
    :cond_20
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 778
    iget v3, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2f

    goto :goto_d

    :cond_2f
    const-wide v3, 0x20b00000001L

    .line 782
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v3, 0x10300000001L

    .line 783
    iget-wide v5, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 785
    :try_start_42
    new-instance v11, Landroid/os/DropBoxManager$Entry;

    iget-object v4, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v5, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v8, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v3, v11

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4f} :catch_91

    .line 787
    :try_start_4f
    invoke-virtual {v11}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_87

    if-eqz v1, :cond_7e

    const/high16 v3, 0x40000

    :try_start_57
    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_5b
    if-ltz v5, :cond_67

    add-int/2addr v6, v5

    if-ge v6, v3, :cond_67

    sub-int v5, v3, v6

    .line 794
    invoke-virtual {v1, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    goto :goto_5b

    :cond_67
    const-wide v7, 0x10c00000002L

    .line 797
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 796
    invoke-virtual {v0, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_74

    goto :goto_7e

    :catchall_74
    move-exception v3

    .line 784
    :try_start_75
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v1

    :try_start_7a
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7d
    throw v3

    :cond_7e
    :goto_7e
    if-eqz v1, :cond_83

    .line 799
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_87

    :cond_83
    :try_start_83
    invoke-virtual {v11}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_91

    goto :goto_a8

    :catchall_87
    move-exception v1

    .line 784
    :try_start_88
    invoke-virtual {v11}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v3

    :try_start_8d
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_90
    throw v1
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_91} :catch_91

    :catch_91
    move-exception v1

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DropBoxManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    :goto_a8
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_d

    .line 806
    :cond_ad
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5

    monitor-enter p0

    .line 1058
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1059
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_44

    .line 1065
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_38

    .line 1067
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList-IA;)V

    .line 1068
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    :cond_38
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1071
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget p1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 1073
    :cond_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getLowPriorityResourceConfigs()V
    .registers 6

    .line 1234
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 1237
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1239
    array-length v1, v0

    if-nez v1, :cond_20

    const/4 v0, 0x0

    .line 1241
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    return-void

    .line 1244
    :cond_20
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_34

    .line 1246
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_34
    return-void
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .registers 12

    monitor-enter p0

    .line 560
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/DropBoxManagerService;->checkPermission(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p4
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_8f

    const/4 p5, 0x0

    if-nez p4, :cond_e

    .line 561
    monitor-exit p0

    return-object p5

    .line 565
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_85
    .catchall {:try_start_e .. :try_end_11} :catchall_8f

    if-nez p1, :cond_16

    .line 571
    :try_start_13
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_1e

    :cond_16
    iget-object p4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_8f

    :goto_1e
    if-nez p1, :cond_22

    .line 572
    monitor-exit p0

    return-object p5

    .line 574
    :cond_22
    :try_start_22
    iget-object p1, p1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance p4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-direct {p4, p2, p3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {p1, p4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 575
    iget-object p3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez p3, :cond_45

    goto :goto_34

    .line 576
    :cond_45
    iget p3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_56

    .line 577
    new-instance p1, Landroid/os/DropBoxManager$Entry;

    iget-object p3, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide p4, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {p1, p3, p4, p5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_54
    .catchall {:try_start_22 .. :try_end_54} :catchall_8f

    monitor-exit p0

    return-object p1

    .line 579
    :cond_56
    :try_start_56
    iget-object p3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {p2, p3}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p3
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_8f

    .line 581
    :try_start_5c
    new-instance p4, Landroid/os/DropBoxManager$Entry;

    iget-object v1, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v5, p2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v0, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_69} :catch_6b
    .catchall {:try_start_5c .. :try_end_69} :catchall_8f

    monitor-exit p0

    return-object p4

    :catch_6b
    move-exception p2

    :try_start_6c
    const-string p4, "DropBoxManagerService"

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_6c .. :try_end_82} :catchall_8f

    goto :goto_34

    .line 589
    :cond_83
    monitor-exit p0

    return-object p5

    :catch_85
    move-exception p1

    :try_start_86
    const-string p2, "DropBoxManagerService"

    const-string p3, "Can\'t init"

    .line 567
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_8f

    .line 568
    monitor-exit p0

    return-object p5

    :catchall_8f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 1

    .line 389
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object p0
.end method

.method public final declared-synchronized init()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1018
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_5c

    .line 1019
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    .line 1020
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_d1

    .line 1023
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 1024
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_42} :catch_43
    .catchall {:try_start_2f .. :try_end_42} :catchall_d1

    goto :goto_5c

    .line 1026
    :catch_43
    :try_start_43
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t statfs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_cf

    .line 1031
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b6

    .line 1034
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList-IA;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 1035
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 1038
    array-length v1, v0

    const/4 v2, 0x0

    :goto_79
    if-ge v2, v1, :cond_cf

    aget-object v3, v0, v2

    .line 1039
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a3

    const-string v4, "DropBoxManagerService"

    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_b3

    .line 1045
    :cond_a3
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 1047
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 1050
    invoke-virtual {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    :cond_b3
    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 1032
    :cond_b6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t list files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cf
    .catchall {:try_start_43 .. :try_end_cf} :catchall_d1

    .line 1054
    :cond_cf
    monitor-exit p0

    return-void

    :catchall_d1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 7

    .line 520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "disabled"

    .line 522
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dropbox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_27

    xor-int/lit8 p0, p0, 0x1

    .line 525
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 526
    throw p0
.end method

.method public final logDropboxDropped(ILjava/lang/String;J)V
    .registers 5

    const/16 p0, 0x1ab

    .line 516
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    return-void
.end method

.method public final matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/DropBoxManagerService$EntryFile;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 761
    iget-wide v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object p0

    .line 763
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_e
    if-ge v3, v0, :cond_2d

    if-eqz v4, :cond_2d

    .line 765
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 766
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_29

    :cond_27
    move v4, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move v4, v2

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2d
    return v4
.end method

.method public onBootPhase(I)V
    .registers 6

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    goto :goto_34

    .line 382
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_34

    .line 365
    :cond_d
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 366
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/DropBoxManagerService$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V

    :goto_34
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    const-string v1, "dropbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final declared-synchronized removeLowPriorityTag(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 601
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 602
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized restoreDefaults()V
    .registers 2

    monitor-enter p0

    .line 605
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 606
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLowPriorityRateLimit(J)V
    .registers 3

    monitor-enter p0

    .line 593
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 594
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized trimToFit()J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1125
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "dropbox_age_seconds"

    const v2, 0x3f480

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1127
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_max_files"

    .line 1129
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    const/16 v4, 0x3e8

    if-eqz v3, :cond_1b

    const/16 v3, 0x12c

    goto :goto_1c

    :cond_1b
    move v3, v4

    .line 1127
    :goto_1c
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 1131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/2addr v0, v4

    int-to-long v3, v0

    sub-long v3, v1, v3

    .line 1133
    :goto_2a
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 1134
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1135
    iget-wide v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_51

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v5, v6, :cond_51

    goto :goto_8f

    :cond_51
    const/4 v5, 0x4

    .line 1139
    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    sub-long v7, v1, v7

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V

    .line 1144
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    if-eqz v5, :cond_76

    .line 1145
    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1146
    :cond_76
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1147
    :cond_89
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    goto :goto_2a

    .line 1155
    :cond_8f
    :goto_8f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1156
    iget-wide v5, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_110

    .line 1157
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "dropbox_quota_percent"

    const/16 v6, 0xa

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1159
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dropbox_reserve_percent"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1161
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dropbox_quota_kb"

    const/16 v8, 0x2800

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1164
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7
    :try_end_be
    .catchall {:try_start_1 .. :try_end_be} :catchall_1c7

    .line 1166
    :try_start_be
    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v8, v7}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_c3} :catch_f7
    .catchall {:try_start_be .. :try_end_c3} :catchall_1c7

    .line 1170
    :try_start_c3
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v7

    .line 1171
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    int-to-long v11, v5

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x64

    div-long/2addr v9, v11

    sub-long/2addr v7, v9

    int-to-long v9, v0

    mul-long/2addr v7, v9

    .line 1172
    div-long/2addr v7, v11

    const-wide/16 v9, 0x0

    const-wide/32 v11, 0x7fffffff

    .line 1174
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 1173
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    mul-int/lit16 v6, v6, 0x400

    .line 1175
    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v6, v5

    .line 1176
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1177
    iput-wide v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    goto :goto_110

    .line 1168
    :catch_f7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t restat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1194
    :cond_110
    :goto_110
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v3, :cond_1bf

    const/4 v3, 0x0

    .line 1197
    new-instance v4, Ljava/util/TreeSet;

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1198
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_128
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_145

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DropBoxManagerService$FileList;

    if-lez v3, :cond_13f

    .line 1199
    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v8, v0

    div-int/2addr v8, v3

    if-gt v7, v8, :cond_13f

    goto :goto_145

    .line 1202
    :cond_13f
    iget v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_128

    .line 1205
    :cond_145
    :goto_145
    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v5, v0

    div-int/2addr v5, v3

    .line 1208
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1209
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v4, v6, :cond_162

    goto :goto_1bf

    .line 1210
    :cond_162
    :goto_162
    iget v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v4, v5, :cond_14d

    iget-object v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14d

    .line 1211
    iget-object v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const/4 v6, 0x3

    .line 1212
    iget-object v7, v4, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v8, v4, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    sub-long v8, v1, v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V

    .line 1217
    iget-object v6, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v4}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18f

    iget v6, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v4, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1218
    :cond_18f
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v4}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a2

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v4, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_1a2
    .catchall {:try_start_c3 .. :try_end_1a2} :catchall_1c7

    .line 1221
    :cond_1a2
    :try_start_1a2
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1222
    new-instance v6, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v8, v4, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v9, v4, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-virtual {p0, v6}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1b5
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1b5} :catch_1b6
    .catchall {:try_start_1a2 .. :try_end_1b5} :catchall_1c7

    goto :goto_162

    :catch_1b6
    move-exception v4

    :try_start_1b7
    const-string v6, "DropBoxManagerService"

    const-string v7, "Can\'t write tombstone file"

    .line 1224
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_162

    .line 1230
    :cond_1bf
    :goto_1bf
    iget v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1c3
    .catchall {:try_start_1b7 .. :try_end_1c3} :catchall_1c7

    mul-int/2addr v0, v1

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_1c7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
