.class final Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FilterAggregator"
.end annotation


# instance fields
.field private final blacklist mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFilterLock:Ljava/lang/Object;

.field private blacklist mFilterResult:I

.field private blacklist mNumPendingFilters:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddToCallbacks(Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->addToCallbacks(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;I)V
    .registers 3

    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterLock:Ljava/lang/Object;

    .line 368
    iput p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    .line 369
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mCallbacks:Ljava/util/Set;

    const/4 p1, 0x0

    .line 370
    iput p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    return-void
.end method

.method private blacklist addToCallbacks(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V
    .registers 2

    .line 405
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist combine(I)V
    .registers 3

    .line 401
    iget v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    return-void
.end method


# virtual methods
.method blacklist onFilterComplete(ILcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V
    .registers 8

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 377
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->combine(I)V

    .line 378
    iget p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    if-nez p2, :cond_4c

    .line 381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_66

    .line 383
    :try_start_19
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$fgetmCarrierServicesSmsFilterCallback(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    move-result-object p2

    iget v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    invoke-interface {p2, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;->onFilterComplete(I)V
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_47

    .line 386
    :try_start_24
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FilterAggregator::onFilterComplete: called successfully with result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mlog(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 392
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$fgetmCallbackTimeoutHandler(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_64

    :catchall_47
    move-exception p0

    .line 386
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 387
    throw p0

    .line 394
    :cond_4c
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterAggregator::onFilterComplete: waiting for pending filters "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mlog(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 397
    :goto_64
    monitor-exit v0

    return-void

    :catchall_66
    move-exception p0

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_24 .. :try_end_68} :catchall_66

    throw p0
.end method
