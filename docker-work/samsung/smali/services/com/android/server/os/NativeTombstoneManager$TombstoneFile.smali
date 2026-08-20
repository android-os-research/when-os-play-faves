.class public Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
.super Ljava/lang/Object;
.source "NativeTombstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/NativeTombstoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TombstoneFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;
    }
.end annotation


# instance fields
.field public mAppId:I

.field public mCrashReason:Ljava/lang/String;

.field public final mPfd:Landroid/os/ParcelFileDescriptor;

.field public mPid:I

.field public mProcessName:Ljava/lang/String;

.field public mPurged:Z

.field public final mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

.field public mTimestampMs:J

.field public mUid:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 330
    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    .line 331
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;)V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    .line 334
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public static parse(Landroid/os/ParcelFileDescriptor;)Ljava/util/Optional;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 402
    new-instance v1, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v4, v3

    move v3, v0

    .line 411
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_89

    .line 412
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    const/4 v9, 0x5

    if-eq v7, v9, :cond_7f

    const/16 v9, 0xf

    if-eq v7, v9, :cond_54

    const/4 v8, 0x7

    if-eq v7, v8, :cond_4a

    const/16 v8, 0x8

    if-eq v7, v8, :cond_40

    const/16 v8, 0x9

    if-eq v7, v8, :cond_34

    goto :goto_16

    :cond_34
    if-nez v4, :cond_16

    const-wide v7, 0x20900000009L

    .line 423
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    :cond_40
    const-wide v6, 0x10900000008L

    .line 449
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    :cond_4a
    const-wide v7, 0x10d00000007L

    .line 418
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_16

    .line 428
    :cond_54
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    goto :goto_16

    :cond_5b
    const-wide v9, 0x20b0000000fL

    .line 433
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v9

    .line 435
    :goto_64
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    if-eq v7, v8, :cond_7b

    .line 436
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_72

    goto :goto_64

    :cond_72
    const-wide v7, 0x10900000001L

    .line 438
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 445
    :cond_7b
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_16

    :cond_7f
    const-wide v7, 0x10d00000005L

    .line 414
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_88} :catch_124
    .catch Landroid/util/proto/ProtoParseException; {:try_start_16 .. :try_end_88} :catch_124

    goto :goto_16

    .line 461
    :cond_89
    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 462
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tombstone\'s UID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") not an app, ignoring"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_b1
    const-wide/16 v7, 0x0

    .line 468
    :try_start_b3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    .line 469
    iget-object v1, v1, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    iget-wide v9, v1, Landroid/system/StructTimespec;->tv_sec:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    iget-wide v11, v1, Landroid/system/StructTimespec;->tv_nsec:J

    const-wide/32 v13, 0xf4240

    div-long/2addr v11, v13
    :try_end_c8
    .catch Landroid/system/ErrnoException; {:try_start_b3 .. :try_end_c8} :catch_cb

    add-long v7, v9, v11

    goto :goto_d5

    :catch_cb
    move-exception v1

    .line 471
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Failed to get timestamp of tombstone"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    :goto_d5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 475
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const-string/jumbo v10, "u:r:untrusted_app"

    .line 477
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_108

    .line 478
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tombstone has invalid selinux label ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 482
    :cond_108
    new-instance v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-direct {v6, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 484
    iput v1, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    .line 485
    iput v9, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    .line 486
    iput v3, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    .line 487
    iput v0, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    if-nez v4, :cond_118

    goto :goto_119

    :cond_118
    move-object v2, v4

    .line 488
    :goto_119
    iput-object v2, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    .line 489
    iput-wide v7, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    .line 490
    iput-object v5, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    .line 492
    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :catch_124
    move-exception p0

    .line 457
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to parse tombstone"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 378
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public getPfdRetriever()Landroid/app/IParcelFileDescriptorRetriever;
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    return-object p0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public matches(Landroid/app/ApplicationExitInfo;)Z
    .registers 6

    .line 354
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_9

    return v1

    .line 358
    :cond_9
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    if-eq v0, v2, :cond_12

    return v1

    .line 362
    :cond_12
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    if-eq v0, v2, :cond_1b

    return v1

    .line 366
    :cond_1b
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    iget-wide p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v2, 0x1388

    cmp-long p0, p0, v2

    if-lez p0, :cond_2d

    return v1

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method public matches(Ljava/util/Optional;Ljava/util/Optional;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 338
    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 342
    :cond_6
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    if-eq p1, v0, :cond_1b

    return v1

    .line 346
    :cond_1b
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    if-eq p1, p0, :cond_30

    return v1

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method public purge()V
    .registers 4

    .line 382
    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    if-nez v0, :cond_1d

    .line 392
    :try_start_4
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_1a

    :catch_10
    move-exception v0

    .line 394
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to truncate tombstone"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    :cond_1d
    return-void
.end method

.method public toAppExitInfo()Landroid/app/ApplicationExitInfo;
    .registers 5

    .line 500
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 501
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 502
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 503
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    .line 504
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 505
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 506
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    const/16 v2, 0x3e8

    .line 513
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    const-string v2, ""

    .line 514
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 515
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    const-wide/16 v2, 0x0

    .line 518
    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 519
    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 521
    iget-wide v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 522
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 525
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    invoke-virtual {v0, p0}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    return-object v0
.end method
