.class public Lcom/android/internal/telephony/dataconnection/ApnContext;
.super Ljava/lang/Object;
.source "ApnContext.java"


# static fields
.field protected static final blacklist DBG:Z = false

.field private static final blacklist sLocalLog:Lcom/android/internal/telephony/LocalLog;


# instance fields
.field public final blacklist LOG_TAG:Ljava/lang/String;

.field private blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private final blacklist mApnType:Ljava/lang/String;

.field private blacklist mConcurrentVoiceAndDataAllowed:Z

.field private final blacklist mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final blacklist mCurrentLocalLogs:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field blacklist mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field public final blacklist mDumpNetworkRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNeedDisconnectByDdsChange:Z

.field private final blacklist mNetworkRequests:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPermanentFailedCount:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPriority:I

.field private blacklist mReason:Ljava/lang/String;

.field private final blacklist mRefCountLock:Ljava/lang/Object;

.field public final blacklist mReleaseLocalLogs:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

.field private final blacklist mRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private blacklist mState:Lcom/android/internal/telephony/DctConstants$State;

.field private final blacklist mStateLocalLog:Lcom/android/internal/telephony/LocalLog;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 446
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker;I)V
    .registers 12

    .line 118
    invoke-static {p2}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker;I)V
    .registers 9

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 437
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    .line 438
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mStateLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 441
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x96

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mCurrentLocalLogs:Lcom/android/internal/telephony/LocalLog;

    .line 442
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReleaseLocalLogs:Lcom/android/internal/telephony/LocalLog;

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDumpNetworkRequests:Ljava/util/ArrayList;

    .line 541
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    .line 130
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 131
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    const-string v0, "dataEnabled"

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    iput p5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPriority:I

    .line 136
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 138
    new-instance p3, Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataThrottler()Lcom/android/internal/telephony/dataconnection/DataThrottler;

    move-result-object p4

    .line 139
    invoke-static {p2}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p3, p1, p4, p2}, Lcom/android/internal/telephony/RetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DataThrottler;I)V

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setPermanentFailedCount(I)V

    .line 144
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNeedDisconnectByDdsChange:Z

    return-void
.end method

.method public static blacklist dumpLocalLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string v0, "Local log:"

    .line 753
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    monitor-enter v0

    .line 755
    :try_start_8
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 756
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static blacklist getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I
    .registers 7

    .line 619
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    .line 620
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/16 v0, 0xc

    .line 629
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x11

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 632
    :goto_1b
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_27

    if-eqz v0, :cond_26

    move v1, v4

    :cond_26
    move v0, v3

    .line 636
    :cond_27
    invoke-virtual {p0, v4}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    const/4 v5, 0x4

    if-eqz v2, :cond_32

    if-eqz v0, :cond_31

    move v1, v4

    :cond_31
    move v0, v5

    .line 640
    :cond_32
    invoke-virtual {p0, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_3e

    if-eqz v0, :cond_3d

    move v1, v4

    :cond_3d
    move v0, v3

    :cond_3e
    const/4 v2, 0x3

    .line 644
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    if-eqz v0, :cond_48

    move v1, v4

    :cond_48
    const/16 v0, 0x20

    .line 648
    :cond_4a
    invoke-virtual {p0, v5}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_55

    if-eqz v0, :cond_53

    move v1, v4

    :cond_53
    const/16 v0, 0x40

    :cond_55
    const/4 v2, 0x5

    .line 652
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_61

    if-eqz v0, :cond_5f

    move v1, v4

    :cond_5f
    const/16 v0, 0x80

    :cond_61
    const/4 v2, 0x7

    .line 656
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    if-eqz v0, :cond_6b

    move v1, v4

    :cond_6b
    const/16 v0, 0x100

    :cond_6d
    const/16 v2, 0xa

    .line 660
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    if-eqz v0, :cond_78

    move v1, v4

    :cond_78
    const/16 v0, 0x200

    :cond_7a
    const/16 v2, 0x17

    .line 664
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_87

    if-eqz v0, :cond_85

    move v1, v4

    :cond_85
    const/16 v0, 0x400

    :cond_87
    const/16 v2, 0x9

    .line 668
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_94

    if-eqz v0, :cond_92

    move v1, v4

    :cond_92
    const/16 v0, 0x800

    :cond_94
    const/16 v2, 0x1d

    .line 672
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_a1

    if-eqz v0, :cond_9f

    move v1, v4

    :cond_9f
    const/16 v0, 0x4000

    :cond_a1
    const/16 v2, 0x23

    .line 676
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_af

    if-eqz v0, :cond_ac

    move v1, v4

    :cond_ac
    const v0, 0x8000

    :cond_af
    const/16 v2, 0x22

    .line 680
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_bc

    if-eqz v0, :cond_ba

    move v1, v4

    :cond_ba
    const/high16 v0, 0x10000

    :cond_bc
    const/16 v2, 0x1f

    .line 685
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_c9

    if-eqz v0, :cond_c7

    move v1, v4

    :cond_c7
    const/16 v0, 0x2000

    .line 690
    :cond_c9
    invoke-virtual {p0, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_d6

    if-eqz v0, :cond_d2

    goto :goto_d3

    :cond_d2
    move v4, v1

    :goto_d3
    const/high16 v0, 0x80000

    move v1, v4

    :cond_d6
    const-string v2, "ApnContext"

    if-eqz v1, :cond_df

    const-string v1, "Multiple apn types specified in request - result is unspecified!"

    .line 701
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    if-nez v0, :cond_f5

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    return v0
.end method

.method private blacklist isFastRetryReason()Z
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    const-string v1, "nwTypeChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    const-string v0, "apnChanged"

    .line 397
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static blacklist requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_2a

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ApnContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 455
    sget-object p1, Lcom/android/internal/telephony/dataconnection/ApnContext;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    monitor-enter p1

    .line 456
    :try_start_22
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 457
    monitor-exit p1

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 731
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 732
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter p2

    .line 733
    :try_start_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_3a

    const-string v1, "NetworkRequests:"

    .line 735
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 738
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_27

    .line 740
    :cond_37
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    :cond_3a
    const-string v1, "Historical APN state:"

    .line 742
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 744
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mStateLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 746
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "--------------------------"

    .line 747
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    monitor-exit p2

    return-void

    :catchall_56
    move-exception p0

    monitor-exit p2
    :try_end_58
    .catchall {:try_start_a .. :try_end_58} :catchall_56

    throw p0
.end method

.method public declared-synchronized blacklist getApnSetting()Landroid/telephony/data/ApnSetting;
    .registers 3

    monitor-enter p0

    .line 225
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnSetting: apnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getApnType()Ljava/lang/String;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getApnTypeBitmask()I
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getConnectionGeneration()I
    .registers 1

    .line 604
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public declared-synchronized blacklist getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;
    .registers 2

    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getDelayForNextApn(Z)J
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isFastRetryReason()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RetryManager;->getDelayForNextApn(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getDelayForNextApn(ZI)J
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isFastRetryReason()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/RetryManager;->getDelayForNextApn(ZI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getNetworkRequests()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 712
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public blacklist getNextApnSetting()Landroid/telephony/data/ApnSetting;
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->getNextApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist getPermanentFailedCount()I
    .registers 2

    monitor-enter p0

    .line 769
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPermanentFailedCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getPriority()I
    .registers 1

    .line 180
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPriority:I

    return p0
.end method

.method public declared-synchronized blacklist getReason()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method blacklist getRetryAfterDisconnectDelay()J
    .registers 3

    .line 608
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->getRetryAfterDisconnectDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRetryCount()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized blacklist getState()Lcom/android/internal/telephony/DctConstants$State;
    .registers 2

    monitor-enter p0

    .line 333
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getWaitingApns()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public blacklist hasRestrictedRequests(Z)Z
    .registers 5

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    if-eqz p1, :cond_1f

    const/4 v2, 0x2

    .line 530
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_9

    :cond_1f
    const/16 v2, 0xd

    .line 533
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 p0, 0x1

    .line 534
    monitor-exit v0

    return p0

    .line 537
    :cond_2a
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public blacklist incAndGetConnectionGeneration()I
    .registers 1

    .line 600
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method public declared-synchronized blacklist isConcurrentVoiceAndDataAllowed()Z
    .registers 2

    monitor-enter p0

    .line 307
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isConnectable()Z
    .registers 2

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq p0, v0, :cond_14

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq p0, v0, :cond_14

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public blacklist isConnectedOrConnecting()Z
    .registers 2

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq p0, v0, :cond_14

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq p0, v0, :cond_14

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public blacklist isConnecting()Z
    .registers 2

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object p0

    .line 778
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public blacklist isDependencyMet()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isDisconnected()Z
    .registers 2

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object p0

    .line 342
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public blacklist isEnabled()Z
    .registers 1

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized blacklist isNeedDisconnectByDdsChange()Z
    .registers 2

    monitor-enter p0

    .line 369
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNeedDisconnectByDdsChange:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isProvisioningApn()Z
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10407e2

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v1, :cond_2c

    .line 430
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 431
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isReady()Z
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDependencyMet()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public blacklist markApnPermanentFailed(Landroid/telephony/data/ApnSetting;)V
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RetryManager;->markApnPermanentFailed(Landroid/telephony/data/ApnSetting;)V

    return-void
.end method

.method public declared-synchronized blacklist releaseDataConnection(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 215
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 217
    :cond_b
    sget-object p1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 218
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist releaseNetwork(Landroid/net/NetworkRequest;I)V
    .registers 5

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 506
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eqz p1, :cond_17

    .line 509
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->reevaluateDataConnectionProperties()V

    .line 511
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseNetwork left with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requests."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V

    .line 513
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x2

    if-eq p2, p1, :cond_44

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4f

    .line 516
    :cond_44
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->disableApn(II)V

    .line 519
    :cond_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public blacklist requestNetwork(Landroid/net/NetworkRequest;ILandroid/os/Message;)V
    .registers 7

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetwork for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->enableApn(IILandroid/os/Message;)V

    .line 494
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eqz p0, :cond_3a

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->reevaluateDataConnectionProperties()V

    .line 499
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public blacklist resetErrorCodeRetries()V
    .registers 10

    const-string v0, "resetErrorCodeRetries"

    .line 544
    invoke-static {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 549
    :try_start_19
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 551
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge v4, v2, :cond_75

    aget-object v5, v0, v4

    const-string v6, ","

    .line 552
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5e

    .line 553
    array-length v7, v6
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_77

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5e

    .line 557
    :try_start_31
    aget-object v5, v6, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    .line 558
    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_3e} :catch_48
    .catchall {:try_start_31 .. :try_end_3e} :catchall_77

    if-lez v6, :cond_72

    if-lez v5, :cond_72

    .line 564
    :try_start_42
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_72

    :catch_48
    move-exception v5

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception parsing config_retries_per_error_code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    goto :goto_72

    .line 567
    :cond_5e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception parsing config_retries_per_error_code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    :cond_72
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 570
    :cond_75
    monitor-exit v1

    return-void

    :catchall_77
    move-exception p0

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_42 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public blacklist restartOnError(I)Z
    .registers 7

    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 577
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    if-eq v1, v3, :cond_17

    .line 589
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1b

    .line 584
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V

    move v2, v3

    .line 593
    :cond_1b
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_41

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartOnError("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and returned "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V

    return v2

    :catchall_41
    move-exception p0

    .line 593
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public declared-synchronized blacklist setApnSetting(Landroid/telephony/data/ApnSetting;)V
    .registers 4

    monitor-enter p0

    .line 234
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApnSetting: apnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 236
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setConcurrentVoiceAndDataAllowed(Z)V
    .registers 2

    monitor-enter p0

    .line 299
    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 300
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 4

    monitor-enter p0

    .line 204
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataConnectionAc: old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 206
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist setEnabled(Z)V
    .registers 4

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set enabled as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    .line 415
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public declared-synchronized blacklist setPermanentFailedCount(I)V
    .registers 4

    monitor-enter p0

    .line 764
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnContext.setPermanentFailedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    .line 765
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPermanentFailedCount:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 766
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist setPriority(I)V
    .registers 2

    .line 188
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPriority:I

    return-void
.end method

.method public declared-synchronized blacklist setReason(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 351
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set reason as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",current state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    .line 352
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 353
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .registers 5

    monitor-enter p0

    .line 315
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previous state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, p1, :cond_45

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mStateLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 322
    :cond_45
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p1, v0, :cond_54

    .line 324
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 326
    :cond_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setWaitingApns(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->setWaitingApns(Ljava/util/ArrayList;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 244
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 718
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mWaitingApns={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 719
    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "} mApnSetting={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "} mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mNeedDisconnectByDdsChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNeedDisconnectByDdsChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_67

    .line 718
    monitor-exit p0

    return-object v0

    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updateNeedDisconnectByDdsChange(Z)V
    .registers 2

    monitor-enter p0

    .line 365
    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNeedDisconnectByDdsChange:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 366
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
