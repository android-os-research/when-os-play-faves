.class public abstract Lcom/android/ims/rcs/uce/request/CapabilityRequest;
.super Ljava/lang/Object;
.source "CapabilityRequest.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/request/UceRequest;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field protected volatile blacklist mCoordinatorId:J

.field protected volatile blacklist mIsFinished:Z

.field protected final blacklist mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

.field protected final blacklist mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

.field protected final blacklist mRequestType:I

.field protected volatile blacklist mSkipGettingFromCache:Z

.field protected final blacklist mSubId:I

.field protected final blacklist mTaskId:J

.field protected final blacklist mUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CapabilityRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mSubId:I

    .line 57
    iput p2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestType:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mUriList:Ljava/util/List;

    .line 59
    iput-object p3, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 60
    new-instance v0, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 61
    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->generateTaskId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mTaskId:J

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .param p4, "requestResponse"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mSubId:I

    .line 68
    iput p2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestType:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mUriList:Ljava/util/List;

    .line 70
    iput-object p3, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 71
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 72
    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->generateTaskId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mTaskId:J

    .line 73
    return-void
.end method

.method private blacklist getCapabilitiesFromCache()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    iget v1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 216
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mUriList:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    .line 217
    :cond_f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 219
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mUriList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 220
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 221
    invoke-interface {v2, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getAvailabilityFromCacheIncludingExpired(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v2

    .line 222
    .local v2, "eabResult":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "eabResult":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_2a
    :goto_2a
    if-nez v0, :cond_31

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 228
    :cond_31
    return-object v0
.end method

.method private blacklist getFromThrottlingList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation

    .line 278
    .local p1, "expiredUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .local p2, "eabResultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v1, "notFoundFromCacheList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v2, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getInThrottlingListUris(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 285
    .local v2, "throttlingUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v3, "throttlingUriFoundInEab":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 287
    .local v5, "uri":Landroid/net/Uri;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 288
    .local v7, "eabResult":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    invoke-virtual {v7}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContact()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 289
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    goto :goto_44

    .line 292
    .end local v7    # "eabResult":Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    :cond_43
    goto :goto_29

    .line 293
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_44
    :goto_44
    goto :goto_19

    .line 295
    :cond_45
    new-instance v4, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 307
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_56

    .line 308
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    :cond_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFromThrottlingList: requesting uris in the list size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", generate non-RCS size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->logd(Ljava/lang/String;)V

    .line 313
    return-object v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 5

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mTaskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    return-object v0
.end method

.method private blacklist getRequestingFromNetworkUris(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 249
    .local p1, "cachedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mUriList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    .line 250
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 252
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 249
    return-object v0
.end method

.method private blacklist getRequestingFromNetworkUris(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 264
    .local p1, "cachedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    .local p2, "throttlingUris":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    .local v0, "notNetworkQueryList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->getRequestingFromNetworkUris(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getUnexpiredCapabilities(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation

    .line 236
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda0;-><init>()V

    .line 237
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda1;-><init>()V

    .line 238
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda2;-><init>()V

    .line 239
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda3;-><init>()V

    .line 240
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 241
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 236
    return-object v0
.end method

.method private blacklist isRequestAllowed()Z
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mUriList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_46

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_46

    .line 196
    :cond_d
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mIsFinished:Z

    if-eqz v0, :cond_1c

    .line 197
    const-string v0, "isRequestAllowed: This request is finished"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->logw(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRequestInternalError(I)V

    .line 199
    return v1

    .line 202
    :cond_1c
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 203
    .local v0, "deviceStateResult":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 204
    const-string v3, "isRequestAllowed: The device is disallowed."

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->logw(Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 206
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 205
    invoke-virtual {v3, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRequestInternalError(I)V

    .line 207
    return v1

    .line 209
    :cond_45
    return v2

    .line 191
    .end local v0    # "deviceStateResult":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    :cond_46
    :goto_46
    const-string v0, "isRequestAllowed: uri is empty"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->logw(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRequestInternalError(I)V

    .line 193
    return v1
.end method

.method private blacklist isSkipGettingFromCache()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mSkipGettingFromCache:Z

    return v0
.end method

.method static synthetic blacklist lambda$getFromThrottlingList$3(Ljava/util/List;Ljava/util/List;Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;)V
    .registers 5
    .param p0, "resultList"    # Ljava/util/List;
    .param p1, "notFoundFromCacheList"    # Ljava/util/List;
    .param p2, "eabResult"    # Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 296
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 297
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    goto :goto_1b

    .line 302
    :cond_e
    nop

    .line 303
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContact()Landroid/net/Uri;

    move-result-object v0

    .line 302
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParserUtils;->getNotFoundContactCapabilities(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 299
    :cond_1b
    :goto_1b
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getContactCapabilities()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :goto_22
    return-void
.end method

.method static synthetic blacklist lambda$getRequestingFromNetworkUris$1(Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cap"    # Landroid/telephony/ims/RcsContactUceCapability;

    .line 251
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getRequestingFromNetworkUris$2(Ljava/util/List;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "cachedCapList"    # Ljava/util/List;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 250
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda4;-><init>(Landroid/net/Uri;)V

    .line 251
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 250
    return v0
.end method

.method static synthetic blacklist lambda$getUnexpiredCapabilities$0(Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;)Z
    .registers 2
    .param p0, "result"    # Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 238
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getStatus()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public blacklist executeRequest()V
    .registers 11

    .line 138
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->isRequestAllowed()Z

    move-result v0

    if-nez v0, :cond_15

    .line 139
    const-string v0, "executeRequest: The request is not allowed."

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->logd(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mCoordinatorId:J

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mTaskId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestError(JJ)V

    .line 141
    return-void

    .line 145
    :cond_15
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->getCapabilitiesFromCache()Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "eabResultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->isSkipGettingFromCache()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 149
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_26

    :cond_22
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->getUnexpiredCapabilities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 150
    .local v1, "cachedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :goto_26
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addCachedCapabilities(Ljava/util/List;)V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeRequest: cached capabilities size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->logd(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->getRequestingFromNetworkUris(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 161
    .local v2, "expiredUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    nop

    .line 162
    invoke-direct {p0, v2, v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->getFromThrottlingList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 163
    .local v3, "throttlingUris":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v4, v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addCachedCapabilities(Ljava/util/List;)V

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeRequest: contacts in throttling list size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->logd(Ljava/lang/String;)V

    .line 168
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_82

    .line 169
    :cond_79
    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v5, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mCoordinatorId:J

    iget-wide v7, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mTaskId:J

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyCachedCapabilitiesUpdated(JJ)V

    .line 173
    :cond_82
    invoke-direct {p0, v1, v3}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->getRequestingFromNetworkUris(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "requestCapUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeRequest: requestCapUris size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->logd(Ljava/lang/String;)V

    .line 181
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 182
    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v6, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mCoordinatorId:J

    iget-wide v8, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mTaskId:J

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyNoNeedRequestFromNetwork(JJ)V

    goto :goto_b3

    .line 184
    :cond_b0
    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->requestCapabilities(Ljava/util/List;)V

    .line 186
    :goto_b3
    return-void
.end method

.method public blacklist getContactUri()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mUriList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestCoordinatorId()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mCoordinatorId:J

    return-wide v0
.end method

.method public blacklist getRequestResponse()Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    return-object v0
.end method

.method public blacklist getTaskId()J
    .registers 3

    .line 87
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mTaskId:J

    return-wide v0
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 332
    sget-object v0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method protected blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 340
    sget-object v0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method protected blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 336
    sget-object v0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method public blacklist onFinish()V
    .registers 4

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mIsFinished:Z

    .line 94
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mTaskId:J

    invoke-interface {v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->removeRequestTimeoutTimer(J)V

    .line 95
    return-void
.end method

.method protected abstract blacklist requestCapabilities(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public blacklist setContactUri(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mUriList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRequestContacts(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public blacklist setRequestCoordinatorId(J)V
    .registers 3
    .param p1, "coordinatorId"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mCoordinatorId:J

    .line 78
    return-void
.end method

.method public blacklist setSkipGettingFromCache(Z)V
    .registers 2
    .param p1, "skipFromCache"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mSkipGettingFromCache:Z

    .line 114
    return-void
.end method

.method protected blacklist setupRequestTimeoutTimer()V
    .registers 10

    .line 320
    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getCapRequestTimeoutAfterMillis()J

    move-result-wide v7

    .line 321
    .local v7, "timeoutAfterMs":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupRequestTimeoutTimer(ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->logd(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mCoordinatorId:J

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->mTaskId:J

    move-wide v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->setRequestTimeoutTimer(JJJ)V

    .line 323
    return-void
.end method
