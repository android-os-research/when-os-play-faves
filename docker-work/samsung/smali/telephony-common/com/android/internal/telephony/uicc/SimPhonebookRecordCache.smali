.class public Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;
.super Landroid/os/Handler;
.source "SimPhonebookRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;
    }
.end annotation


# static fields
.field static final blacklist ENABLE_INFLATE_WITH_EMPTY_RECORDS:Z = true
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private blacklist LOG_TAG:Ljava/lang/String;

.field private blacklist mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/AdnCapacity;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAdnLoadingWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field blacklist mIsUpdateDone:Z

.field private blacklist mPhoneId:I

.field private blacklist mReadLock:Ljava/lang/Object;

.field private final blacklist mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$-oMw9NAorlSWhtdad_xQOv577y4(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->lambda$populateAdnRecords$0(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Ok3L2lotfD8E49MhDgPSZCPqxfM(Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->lambda$populateAdnRecords$1(Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vF-FsIKa3qlE5kH6r8Nrr9nz1x0(Ljava/lang/Integer;Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->lambda$invalidateSimPbCache$2(Ljava/lang/Integer;Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V
    .registers 7

    .line 106
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "SimPhonebookRecordCache"

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    .line 107
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 108
    iput p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mPhoneId:I

    .line 109
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mContext:Landroid/content/Context;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 111
    invoke-interface {p3, p0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPhonebookChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p1, 0x6

    .line 112
    invoke-interface {p3, p0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 113
    invoke-interface {p3, p0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPhonebookRecordsReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist addOrChangeSimPbRecord(Lcom/android/internal/telephony/uicc/AdnRecord;I)V
    .registers 5

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record number for the added or changed ADN is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecId(I)V

    .line 582
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist deleteSimPbRecord(I)V
    .registers 11

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record number for the deleted ADN is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 592
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/16 v2, 0x6f3a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist fillCache()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13

    .line 192
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_c
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    goto :goto_11

    :catch_c
    :try_start_c
    const-string v1, "Interrupted Exception in queryAdnRecord"

    .line 194
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 196
    :goto_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p0
.end method

.method private blacklist fillCacheWithoutWaiting()V
    .registers 4

    const-string v0, "Start to queryAdnRecord"

    .line 200
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSimPhonebookRecords(Landroid/os/Message;)V

    goto :goto_1f

    :cond_1a
    const-string v0, "The loading is ongoing"

    .line 204
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method private blacklist getSimPhonebookCapacity()V
    .registers 3

    const-string v0, "Start to getSimPhonebookCapacity"

    .line 180
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSimPhonebookCapacity(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist handlePhonebookCapacityChanged(Lcom/android/internal/telephony/uicc/AdnCapacity;)V
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    if-nez p1, :cond_f

    .line 437
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnCapacity;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>()V

    .line 439
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v0, :cond_32

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->inflateWithEmptyRecords(Lcom/android/internal/telephony/uicc/AdnCapacity;)V

    .line 442
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_29

    .line 443
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 444
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    goto :goto_2c

    .line 446
    :cond_29
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 448
    :goto_2c
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_55

    .line 451
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4b

    .line 452
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_4b

    .line 455
    :cond_40
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    if-nez p1, :cond_53

    .line 456
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    .line 457
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    goto :goto_53

    .line 453
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 459
    :cond_53
    :goto_53
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    :goto_55
    return-void
.end method

.method private blacklist handlePhonebookChanged()V
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 428
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    goto :goto_11

    :cond_c
    const-string v0, "Do nothing in the midst of multiple update"

    .line 430
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method private blacklist handlePhonebookRecordReceived(Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_5f

    .line 477
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->isOk()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "Partial data is received"

    .line 478
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->getPhonebookRecords()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->populateAdnRecords(Ljava/util/List;)V

    goto :goto_67

    .line 480
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->isCompleted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    const-string v0, "The whole loading process is finished"

    .line 481
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->getPhonebookRecords()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->populateAdnRecords(Ljava/util/List;)V

    .line 483
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 484
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 485
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    .line 487
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    goto :goto_67

    .line 488
    :cond_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->isRetryNeeded()Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_56

    const-string p1, "Start to retry as aborted"

    .line 489
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendGettingPhonebookRecordsRetry(I)V

    goto :goto_67

    :cond_56
    const-string p1, "Error happened"

    .line 492
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->responseToWaitersWithErrorOrSuccess(Z)V

    goto :goto_67

    :cond_5f
    const-string p1, "No records there"

    .line 498
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->responseToWaitersWithErrorOrSuccess(Z)V

    :goto_67
    return-void
.end method

.method private blacklist handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 543
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-nez v0, :cond_10

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    const/16 v1, 0x4f30

    if-eq p1, v1, :cond_13

    const/16 v1, 0x6f3a

    if-eq p1, v1, :cond_13

    :cond_10
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1f

    .line 547
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    .line 548
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    goto :goto_1f

    :cond_1a
    const-string p1, "IccRefreshResponse received is null"

    .line 551
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private blacklist handleUpdatePhonebookRecordDone(Landroid/os/AsyncResult;)V
    .registers 7

    .line 505
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;

    const/4 v1, 0x1

    .line 506
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    .line 507
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_53

    .line 508
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->-$$Nest$fgetmyRecordId(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)I

    move-result v1

    .line 509
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->-$$Nest$fgetadnRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v2

    .line 510
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v3, 0x0

    aget p1, p1, v3

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "my record ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new record ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v1, v3, :cond_44

    if-ne v1, p1, :cond_3c

    goto :goto_44

    .line 519
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "The record ID for update doesn\'t match"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    .line 513
    :cond_44
    :goto_44
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 514
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->addOrChangeSimPbRecord(Lcom/android/internal/telephony/uicc/AdnRecord;I)V

    goto :goto_51

    .line 516
    :cond_4e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->deleteSimPbRecord(I)V

    :goto_51
    const/4 p1, 0x0

    goto :goto_5d

    .line 523
    :cond_53
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "Update adn record failed"

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 526
    :goto_5d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->responseResult(Ljava/lang/Exception;)V

    goto :goto_73

    :cond_6e
    const-string p1, "this update request isn\'t found"

    .line 530
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 532
    :goto_73
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    return-void
.end method

.method private blacklist inflateWithEmptyRecords(Lcom/android/internal/telephony/uicc/AdnCapacity;)V
    .registers 13

    const-string v0, "inflateWithEmptyRecords"

    .line 465
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    .line 467
    :goto_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAdnCount()I

    move-result v1

    if-gt v0, v1, :cond_2f

    .line 468
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/16 v2, 0x6f3a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2f
    return-void
.end method

.method private blacklist invalidateSimPbCache()V
    .registers 3

    const-string v0, "invalidateSimPbCache"

    .line 602
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 605
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method private blacklist isAdnCapacityInvalid()Z
    .registers 2

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimValid()Z

    move-result p0

    if-nez p0, :cond_11

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

.method private static synthetic blacklist lambda$invalidateSimPbCache$2(Ljava/lang/Integer;Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 9

    .line 606
    new-instance p1, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v1, 0x6f3a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p1
.end method

.method private static synthetic blacklist lambda$populateAdnRecords$0(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 9

    .line 557
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getRecordId()I

    move-result v2

    .line 560
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x6f3a

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v7
.end method

.method private static synthetic blacklist lambda$populateAdnRecords$1(Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 1

    return-object p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 614
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 620
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyAdnLoadingWaiters()V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 264
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAndClearWaiters()V

    return-void

    :catchall_d
    move-exception p0

    .line 264
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method private blacklist notifyAndClearWaiters()V
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    if-eqz v2, :cond_9

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 159
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    .line 160
    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 161
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    .line 164
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 165
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method private blacklist populateAdnRecords(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/SimPhonebookRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 557
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda2;-><init>()V

    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda3;-><init>()V

    .line 564
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 565
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    :cond_28
    return-void
.end method

.method private blacklist reset()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clear()V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsUpdateDone:Z

    return-void
.end method

.method private blacklist responseToWaitersWithErrorOrSuccess(Z)V
    .registers 4

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseToWaitersWithErrorOrSuccess success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_25

    .line 417
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAdnLoadingWaiters()V

    goto :goto_28

    .line 419
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendResponsesToWaitersWithError()V

    .line 422
    :goto_28
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->tryFireUpdatePendingList()V

    return-void
.end method

.method private blacklist sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 148
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p2

    iput-object p0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 150
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    return-void
.end method

.method private blacklist sendGettingPhonebookRecordsRetry(I)V
    .registers 4

    const/4 p1, 0x7

    .line 570
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 571
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 574
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    .line 575
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist sendResponsesToWaitersWithError()V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "Query adn record failed"

    .line 173
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_e

    .line 175
    :cond_20
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 176
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method private blacklist tryFireUpdatePendingList()V
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebook(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)V

    :cond_14
    return-void
.end method

.method private blacklist updateSimPhonebook(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)V
    .registers 5

    const-string v0, "update Sim phonebook"

    .line 334
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;->-$$Nest$fgetphonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    move-result-object v1

    const/4 v2, 0x5

    .line 336
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 335
    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist updateSimPhonebookByNewAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .registers 6

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update sim contact for record ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_19

    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    move v0, p1

    .line 309
    :goto_1a
    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;-><init>()V

    .line 310
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setRecordId(I)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setAlphaTag(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setNumber(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setEmails([Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->setAdditionalNumbers([Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;->build()Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;

    invoke-direct {v1, p1, p2, v0, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;-><init>(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V

    .line 317
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isAdnCapacityInvalid()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    .line 322
    :cond_5a
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_82

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_82

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-gt p2, p3, :cond_82

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 323
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_82

    if-eqz p1, :cond_7e

    goto :goto_82

    .line 330
    :cond_7e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebook(Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$UpdateRequest;)V

    return-void

    .line 324
    :cond_82
    :goto_82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "It is pending on update as  mIsRecordLoading = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mIsInRetry = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 325
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " pending size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mUpdateRequests:Ljava/util/List;

    .line 326
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mIsInitialized = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public blacklist dispose()V
    .registers 2

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->reset()V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPhonebookChanged(Landroid/os/Handler;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPhonebookRecordsReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getAdnCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    return-object p0
.end method

.method public blacklist getAdnRecords()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 342
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_fc

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    goto/16 :goto_fa

    .line 396
    :pswitch_1e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_PHONEBOOK_RECORDS_RETRY cnt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ge p1, v0, :cond_46

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 400
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    add-int/lit8 p1, p1, 0x1

    .line 401
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendGettingPhonebookRecordsRetry(I)V

    goto/16 :goto_fa

    .line 403
    :cond_46
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->responseToWaitersWithErrorOrSuccess(Z)V

    goto/16 :goto_fa

    :pswitch_4b
    const-string v0, "EVENT_SIM_REFRESH"

    .line 387
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 388
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 389
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_61

    .line 390
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_fa

    .line 392
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM refresh Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    goto/16 :goto_fa

    :pswitch_79
    const-string v0, "EVENT_UPDATE_PHONEBOOK_RECORD_DONE"

    .line 382
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 383
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 384
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handleUpdatePhonebookRecordDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_fa

    :pswitch_87
    const-string v0, "EVENT_GET_PHONEBOOK_CAPACITY_DONE"

    .line 359
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 360
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_9e

    .line 361
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_9e

    .line 362
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/AdnCapacity;

    .line 363
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handlePhonebookCapacityChanged(Lcom/android/internal/telephony/uicc/AdnCapacity;)V

    goto :goto_fa

    .line 365
    :cond_9e
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isAdnCapacityInvalid()Z

    move-result p1

    if-nez p1, :cond_ae

    .line 366
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 368
    :cond_ae
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    goto :goto_fa

    :pswitch_b2
    const-string v0, "EVENT_GET_PHONEBOOK_RECORDS_DONE"

    .line 348
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 349
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_fa

    .line 350
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_fa

    const-string p1, "Failed to gain phonebook records"

    .line 351
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->invalidateSimPbCache()V

    .line 353
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_fa

    .line 354
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendGettingPhonebookRecordsRetry(I)V

    goto :goto_fa

    :pswitch_d5
    const-string v0, "EVENT_PHONEBOOK_RECORDS_RECEIVED"

    .line 372
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 373
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 374
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_ea

    const-string v0, "Unexpected exception happened"

    .line 375
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 379
    :cond_ea
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handlePhonebookRecordReceived(Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;)V

    goto :goto_fa

    :pswitch_f2
    const-string p1, "EVENT_PHONEBOOK_CHANGED"

    .line 344
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->handlePhonebookChanged()V

    :cond_fa
    :goto_fa
    return-void

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_d5
        :pswitch_b2
        :pswitch_87
        :pswitch_79
        :pswitch_4b
        :pswitch_1e
    .end packed-switch
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->getInstance()Lcom/android/internal/telephony/RadioInterfaceCapabilityController;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioInterfaceCapabilityController;->getCapabilities()Ljava/util/Set;

    move-result-object v0

    const-string v1, "CAPABILITY_SIM_PHONEBOOK_IN_MODEM"

    .line 125
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_1b

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public blacklist isLoading()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public blacklist requestLoadAllPbRecords(Landroid/os/Message;)V
    .registers 5

    if-nez p1, :cond_13

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_13

    const-string p1, "Try to enforce flushing cache"

    .line 210
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCacheWithoutWaiting()V

    return-void

    .line 215
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mReadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_16
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->isAdnCapacityInvalid()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 220
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->getSimPhonebookCapacity()V

    :cond_2a
    const/4 v2, 0x1

    if-gt p1, v2, :cond_66

    .line 222
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_66

    if-eqz v1, :cond_40

    goto :goto_66

    .line 229
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_98

    .line 230
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsRecordLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_62

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_62

    const-string p1, "ADN cache has already filled in"

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsCacheInvalidated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_62

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->notifyAndClearWaiters()V

    return-void

    .line 237
    :cond_62
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->fillCache()V

    return-void

    .line 224
    :cond_66
    :goto_66
    :try_start_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add to the pending list as pending size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is retrying = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " IsInitialized = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 226
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->logd(Ljava/lang/String;)V

    .line 227
    monitor-exit v0

    return-void

    :catchall_98
    move-exception p0

    .line 229
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_66 .. :try_end_9a} :catchall_98

    throw p0
.end method

.method public blacklist updateSimPbAdnByRecordId(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .registers 6

    if-nez p2, :cond_8

    const-string p1, "There is an invalid new Adn for update"

    .line 270
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 273
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p1, "There is an invalid old Adn for update"

    .line 275
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 278
    :cond_1a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebookByNewAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .registers 8

    if-nez p2, :cond_8

    const-string p1, "There is an invalid new Adn for update"

    .line 283
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 v0, -0x1

    if-eqz p1, :cond_32

    .line 289
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mSimPbRecords:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 291
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 292
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecId()I

    move-result p1

    goto :goto_33

    :cond_32
    move p1, v0

    :goto_33
    if-ne p1, v0, :cond_51

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 298
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->mAdnCapacity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->isSimFull()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string p1, "SIM Phonebook record is full"

    .line 299
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->updateSimPhonebookByNewAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    return-void
.end method
