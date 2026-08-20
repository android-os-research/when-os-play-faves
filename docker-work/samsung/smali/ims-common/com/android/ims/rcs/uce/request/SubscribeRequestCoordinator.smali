.class public Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;
.super Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
.source "SubscribeRequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;,
        Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
    }
.end annotation


# static fields
.field private static final blacklist sCommandErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sNetworkRespErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sNetworkRespSuccessfulCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sNotNeedRequestFromNetworkCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sRequestErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sRequestTimeoutCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

.field private static final blacklist sTerminatedCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;


# instance fields
.field private volatile blacklist mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetCapabilitiesCallback(Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sRequestErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 102
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sCommandErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 111
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNetworkRespErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 127
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNetworkRespSuccessfulCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 131
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sTerminatedCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 153
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNotNeedRequestFromNetworkCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    .line 157
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda9;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sRequestTimeoutCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 6
    .param p1, "subId"    # I
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .param p4, "instance"    # Lcom/android/ims/rcs/uce/UceStatsWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;",
            "Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;",
            "Lcom/android/ims/rcs/uce/UceStatsWriter;",
            ")V"
        }
    .end annotation

    .line 168
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 169
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 170
    const-string v0, "SubscribeRequestCoordinator: created"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V

    return-void
.end method

.method private blacklist checkAndFinishRequestCoordinator()V
    .registers 8

    .line 527
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 530
    monitor-exit v0

    return-void

    .line 535
    :cond_d
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    .line 536
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda0;-><init>()V

    .line 537
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda1;-><init>()V

    .line 538
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 542
    .local v1, "optRequestResult":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 543
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 544
    .local v2, "result":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 545
    .local v3, "errorCode":I
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getRetryMillis()Ljava/util/Optional;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 546
    .local v4, "retryAfter":J
    invoke-direct {p0, v3, v4, v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerErrorCallback(IJ)V

    .line 547
    .end local v2    # "result":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .end local v3    # "errorCode":I
    .end local v4    # "retryAfter":J
    goto :goto_67

    .line 548
    :cond_64
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCompletedCallback()V

    .line 552
    :goto_67
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCoordinatorId:J

    invoke-interface {v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestCoordinatorFinished(J)V

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndFinishRequestCoordinator(SubscribeRequest) done, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCoordinatorId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 555
    .end local v1    # "optRequestResult":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;>;"
    monitor-exit v0

    .line 556
    return-void

    .line 555
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method private blacklist getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation

    .line 357
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v1, "notFoundFromCacheList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 362
    invoke-interface {v2, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 364
    .local v2, "eabResultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    new-instance v3, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 376
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    .line 377
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilitiesFromCacheIncludingExpired: requesting uris size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", capabilities not found from cache size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 381
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 382
    return-object v0
.end method

.method private blacklist handleCachedCapabilityUpdated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 438
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 439
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 440
    .local v1, "taskId":Ljava/lang/Long;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCachedContactCapability()Ljava/util/List;

    move-result-object v2

    .line 441
    .local v2, "cachedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCachedCapabilityUpdated: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 443
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 444
    return-void

    .line 448
    :cond_3b
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 449
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeCachedContactCapabilities()V

    .line 450
    return-void
.end method

.method private blacklist handleCapabilitiesUpdated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 9
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 390
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 391
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 392
    .local v1, "taskId":Ljava/lang/Long;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getUpdatedContactCapability()Ljava/util/List;

    move-result-object v2

    .line 393
    .local v2, "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCapabilitiesUpdated: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 395
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 396
    return-void

    .line 399
    :cond_3b
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setPresenceNotifyEvent(IJLjava/util/List;)V

    .line 401
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v3, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->saveCapabilities(Ljava/util/List;)V

    .line 405
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 406
    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeUpdatedCapabilities(Ljava/util/List;)V

    .line 407
    return-void
.end method

.method private blacklist handleCommandError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 10
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 255
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 256
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCommandError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 261
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCommandError()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 262
    .local v1, "commandErrorCode":I
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 266
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 267
    .local v2, "taskId":Ljava/lang/Long;
    sget-object v3, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sCommandErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v3, v4, v5, v0, v6}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    .line 269
    .local v3, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 270
    return-void
.end method

.method private blacklist handleNetworkResponse(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 277
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 278
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 281
    .local v1, "respCode":I
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setSubscribeResponse(IJI)V

    .line 284
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getResponseSipCode()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 292
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->isNetworkResponseOK()Z

    move-result v2

    if-nez v2, :cond_75

    .line 295
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleNetworkResponseFailed(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    .line 298
    .local v2, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getUpdatedContactCapability()Ljava/util/List;

    move-result-object v3

    .line 299
    .local v3, "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    .line 300
    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v4, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->saveCapabilities(Ljava/util/List;)V

    .line 301
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 302
    invoke-virtual {v0, v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeUpdatedCapabilities(Ljava/util/List;)V

    .line 306
    :cond_67
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 309
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 311
    .end local v2    # "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .end local v3    # "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :cond_75
    return-void
.end method

.method private blacklist handleNetworkResponseFailed(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 11
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 314
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v0

    .line 315
    .local v0, "taskId":J
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v2

    .line 316
    .local v2, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNotReceiveCapabilityUpdatedContact()Ljava/util/List;

    move-result-object v3

    .line 317
    .local v3, "requestUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v4, 0x0

    .line 319
    .local v4, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->isNotFound()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 324
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 326
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 327
    .local v5, "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-virtual {v2, v5}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addUpdatedCapabilities(Ljava/util/List;)V

    .line 330
    sget-object v6, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNetworkRespSuccessfulCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v6, v0, v1, v2, v7}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    .line 332
    .end local v5    # "capabilityList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    goto :goto_5f

    .line 335
    :cond_36
    nop

    .line 336
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 337
    .local v5, "capabilitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-virtual {v2, v5}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addUpdatedCapabilities(Ljava/util/List;)V

    .line 340
    iget-object v6, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 341
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getResponseSipCode()Ljava/util/Optional;

    move-result-object v7

    const/16 v8, 0x198

    .line 342
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 341
    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 340
    invoke-interface {v6, v3, v7}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->addToThrottlingList(Ljava/util/List;I)V

    .line 344
    sget-object v6, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNetworkRespErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v6, v0, v1, v2, v7}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    .line 347
    .end local v5    # "capabilitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :goto_5f
    return-object v4
.end method

.method private blacklist handleNoNeedRequestFromNetwork(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 476
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 477
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNoNeedRequestFromNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 483
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    .line 484
    .local v1, "taskId":J
    sget-object v3, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sNotNeedRequestFromNetworkCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v3, v1, v2, v0, v4}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    .line 486
    .local v3, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 487
    return-void
.end method

.method private blacklist handleRequestError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 237
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 238
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 244
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 245
    .local v1, "taskId":Ljava/lang/Long;
    sget-object v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sRequestErrorCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    .line 247
    .local v2, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 248
    return-void
.end method

.method private blacklist handleRequestTimeout(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 10
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 493
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 494
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getNotReceiveCapabilityUpdatedContact()Ljava/util/List;

    move-result-object v1

    .line 495
    .local v1, "requestUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRequestTimeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRequestTimeout: not received updated uri size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    const/16 v3, 0x198

    invoke-interface {v2, v1, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->addToThrottlingList(Ljava/util/List;I)V

    .line 503
    nop

    .line 504
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 505
    .local v2, "capabilitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addUpdatedCapabilities(Ljava/util/List;)V

    .line 508
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getUpdatedContactCapability()Ljava/util/List;

    move-result-object v3

    .line 509
    .local v3, "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_57

    .line 510
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 511
    invoke-virtual {v0, v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeUpdatedCapabilities(Ljava/util/List;)V

    .line 515
    :cond_57
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v4

    .line 516
    .local v4, "taskId":J
    sget-object v6, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sRequestTimeoutCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v6, v4, v5, v0, v7}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v6

    .line 520
    .local v6, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 523
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 524
    return-void
.end method

.method private blacklist handleResourceTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 9
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 414
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 415
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 416
    .local v1, "taskId":Ljava/lang/Long;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getTerminatedResources()Ljava/util/List;

    move-result-object v2

    .line 417
    .local v2, "terminatedResources":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResourceTerminated: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 419
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 420
    return-void

    .line 423
    :cond_3b
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v4, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setPresenceNotifyEvent(IJLjava/util/List;)V

    .line 426
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v3, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->saveCapabilities(Ljava/util/List;)V

    .line 430
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->triggerCapabilitiesReceivedCallback(Ljava/util/List;)V

    .line 431
    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->removeTerminatedResources(Ljava/util/List;)V

    .line 432
    return-void
.end method

.method private blacklist handleTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 9
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 457
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    move-result-object v0

    .line 458
    .local v0, "response":Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTerminated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->onFinish()V

    .line 464
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 465
    .local v1, "taskId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mSubId:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getTerminatedReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setSubscribeTerminated(IJLjava/lang/String;)V

    .line 466
    sget-object v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->sTerminatedCreator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    .line 468
    .local v2, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 469
    return-void
.end method

.method static synthetic blacklist lambda$checkAndFinishRequestCoordinator$10(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)Z
    .registers 2
    .param p0, "result"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 537
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->isRequestSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$checkAndFinishRequestCoordinator$11(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)J
    .registers 4
    .param p0, "result"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    .line 539
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->getRetryMillis()Ljava/util/Optional;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$getCapabilitiesFromCacheIncludingExpired$9(Ljava/util/List;Ljava/util/List;Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;)V
    .registers 5
    .param p0, "resultList"    # Ljava/util/List;
    .param p1, "notFoundFromCacheList"    # Ljava/util/List;
    .param p2, "eabResult"    # Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 365
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 366
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    goto :goto_1b

    .line 371
    :cond_e
    nop

    .line 372
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContact()Landroid/net/Uri;

    move-result-object v0

    .line 371
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getNotFoundContactCapabilities(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 368
    :cond_1b
    :goto_1b
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContactCapabilities()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :goto_22
    return-void
.end method

.method static synthetic blacklist lambda$handleNetworkResponseFailed$8(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 325
    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getNotFoundContactCapabilities(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 8
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 96
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRequestInternalError()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 97
    .local v0, "errorCode":I
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v1

    .line 98
    .local v1, "retryAfter":J
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    return-object v3
.end method

.method static synthetic blacklist lambda$static$1(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 9
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 104
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCommandError()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    .local v0, "cmdError":I
    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCapabilityErrorFromCommandError(I)I

    move-result v1

    .line 106
    .local v1, "errorCode":I
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v2

    .line 107
    .local v2, "retryAfter":J
    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    return-object v4
.end method

.method static synthetic blacklist lambda$static$2(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 9
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 113
    invoke-interface {p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 114
    .local v0, "deviceState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 115
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    .local v1, "errorCode":I
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getRequestRetryAfterMillis()J

    move-result-wide v2

    .line 117
    .local v2, "retryAfter":J
    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    return-object v4

    .line 119
    .end local v1    # "errorCode":I
    .end local v2    # "retryAfter":J
    :cond_26
    invoke-static {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCapabilityErrorFromSipCode(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)I

    move-result v1

    .line 120
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v2

    .line 121
    .restart local v2    # "retryAfter":J
    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    return-object v4
.end method

.method static synthetic blacklist lambda$static$3(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 5
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 128
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createSuccessResult(J)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$4(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 9
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 134
    nop

    .line 135
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getTerminatedReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v1

    .line 136
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->haveAllRequestCapsUpdatedBeenReceived()Z

    move-result v3

    .line 134
    invoke-static {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;->getAnalysisResult(Ljava/lang/String;JZ)Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;

    move-result-object v0

    .line 137
    .local v0, "terminatedResult":Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 139
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 140
    .local v1, "errorCode":I
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->getRetryAfterMillis()J

    move-result-wide v2

    .line 141
    .local v2, "terminatedRetry":J
    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    return-object v4

    .line 142
    .end local v1    # "errorCode":I
    .end local v2    # "terminatedRetry":J
    :cond_32
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->isNetworkResponseOK()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_43

    goto :goto_48

    .line 148
    :cond_43
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createSuccessResult(J)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v1

    return-object v1

    .line 144
    :cond_48
    :goto_48
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getRetryAfterMillis()J

    move-result-wide v1

    .line 145
    .local v1, "retryAfterMillis":J
    invoke-static {p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getCapabilityErrorFromSipCode(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)I

    move-result v3

    .line 146
    .local v3, "errorCode":I
    invoke-static {p0, p1, v3, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v4

    return-object v4
.end method

.method static synthetic blacklist lambda$static$5(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 5
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 154
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createSuccessResult(J)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$6(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 7
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 158
    const/16 v0, 0x9

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 174
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 175
    return-void
.end method

.method private blacklist triggerCapabilitiesReceivedCallback(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 563
    .local p1, "capList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    const-string v0, "triggerCapabilitiesCallback: done"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerCapabilitiesCallback: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onCapabilitiesReceived(Ljava/util/List;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_24
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    goto :goto_3b

    .line 568
    :catchall_22
    move-exception v1

    goto :goto_40

    .line 565
    :catch_24
    move-exception v1

    .line 566
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerCapabilitiesCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_22

    .line 568
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3b
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 569
    nop

    .line 570
    return-void

    .line 568
    :goto_40
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 569
    throw v1
.end method

.method private blacklist triggerCompletedCallback()V
    .registers 5

    .line 577
    const-string v0, "triggerCompletedCallback: done"

    :try_start_2
    const-string v1, "triggerCompletedCallback"

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onComplete()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_12
    .catchall {:try_start_2 .. :try_end_c} :catchall_10

    .line 582
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 583
    goto :goto_2a

    .line 582
    :catchall_10
    move-exception v1

    goto :goto_2b

    .line 579
    :catch_12
    move-exception v1

    .line 580
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerCompletedCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_10

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_c

    .line 584
    :goto_2a
    return-void

    .line 582
    :goto_2b
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 583
    throw v1
.end method

.method private blacklist triggerErrorCallback(IJ)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMillis"    # J

    .line 591
    const-string v0, "triggerErrorCallback: done"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerErrorCallback: errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJ)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_2a
    .catchall {:try_start_2 .. :try_end_27} :catchall_28

    goto :goto_41

    .line 596
    :catchall_28
    move-exception v1

    goto :goto_46

    .line 593
    :catch_2a
    move-exception v1

    .line 594
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerErrorCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_28

    .line 596
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_41
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 597
    nop

    .line 598
    return-void

    .line 596
    :goto_46
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 597
    throw v1
.end method


# virtual methods
.method public blacklist getActivatedRequest()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFinishedRequest()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mFinishedRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$handleNetworkResponse$7$com-android-ims-rcs-uce-request-SubscribeRequestCoordinator(Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "response"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .param p2, "sipCode"    # Ljava/lang/Integer;

    .line 285
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->getResponseReason()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->refreshDeviceState(ILjava/lang/String;)V

    .line 287
    return-void
.end method

.method public blacklist onFinish()V
    .registers 2

    .line 179
    const-string v0, "SubscribeRequestCoordinator: onFinish"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mCapabilitiesCallback:Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 181
    invoke-super {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onFinish()V

    .line 182
    return-void
.end method

.method public blacklist onRequestUpdated(JI)V
    .registers 8
    .param p1, "taskId"    # J
    .param p3, "event"    # I

    .line 186
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    .line 187
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    .line 188
    .local v0, "request":Lcom/android/ims/rcs/uce/request/SubscribeRequest;
    if-nez v0, :cond_28

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated: Cannot find SubscribeRequest taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V

    .line 190
    return-void

    .line 193
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated(SubscribeRequest): taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    .line 194
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logd(Ljava/lang/String;)V

    .line 196
    packed-switch p3, :pswitch_data_96

    .line 225
    :pswitch_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated(SubscribeRequest): invalid event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->logw(Ljava/lang/String;)V

    goto :goto_92

    .line 222
    :pswitch_6e
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleRequestTimeout(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 223
    goto :goto_92

    .line 219
    :pswitch_72
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleNoNeedRequestFromNetwork(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 220
    goto :goto_92

    .line 216
    :pswitch_76
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 217
    goto :goto_92

    .line 213
    :pswitch_7a
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleCachedCapabilityUpdated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 214
    goto :goto_92

    .line 210
    :pswitch_7e
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleResourceTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 211
    goto :goto_92

    .line 207
    :pswitch_82
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleCapabilitiesUpdated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 208
    goto :goto_92

    .line 204
    :pswitch_86
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleNetworkResponse(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 205
    goto :goto_92

    .line 201
    :pswitch_8a
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleCommandError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 202
    goto :goto_92

    .line 198
    :pswitch_8e
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->handleRequestError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V

    .line 199
    nop

    .line 230
    :goto_92
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->checkAndFinishRequestCoordinator()V

    .line 231
    return-void

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_57
        :pswitch_6e
    .end packed-switch
.end method
