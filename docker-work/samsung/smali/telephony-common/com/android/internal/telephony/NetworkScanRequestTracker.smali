.class public final Lcom/android/internal/telephony/NetworkScanRequestTracker;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;,
        Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    }
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mNextNetworkScanRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;


# direct methods
.method public static synthetic blacklist $r8$lambda$FLHA4goSvT9cI-mxMKDAvJt_7RU(Ljava/util/Set;Landroid/telephony/CellInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->lambda$notifyMessenger$0(Ljava/util/Set;Landroid/telephony/CellInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$SP5v-gsoXQzoyen6d0mH099UaL0(Landroid/telephony/SubscriptionInfo;)Ljava/util/stream/Stream;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->getAllowableMccMncsFromSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minterruptNetworkScan(Lcom/android/internal/telephony/NetworkScanRequestTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->interruptNetworkScan(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misValidScan(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->isValidScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogEmptyResultOrException(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->logEmptyResultOrException(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->notifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mNextNetworkScanRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    return-void
.end method

.method private static blacklist doesCellInfoCorrespondToKnownMccMnc(Landroid/telephony/CellInfo;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static blacklist getAllowableMccMncsFromSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SubscriptionInfo;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/List;

    .line 215
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getEhplmns()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getHplmns()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    :cond_49
    return-object v0
.end method

.method public static blacklist getAllowedMccMncsForLocationRestrictedScan(Landroid/content/Context;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 204
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-virtual {v2, v3, p0}, Lcom/android/internal/telephony/SubscriptionController;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 206
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda0;-><init>()V

    .line 207
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 208
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2f

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw p0
.end method

.method private blacklist interruptNetworkScan(I)V
    .registers 4

    .line 630
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist isValidScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .registers 9

    .line 132
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_105

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p0

    if-nez p0, :cond_13

    goto/16 :goto_105

    .line 136
    :cond_13
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_21

    const-string p0, "ScanRequestTracker"

    const-string p1, "isValidScan: false (No Phone)"

    .line 137
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 141
    :cond_21
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p0

    array-length p0, p0

    const/16 v1, 0x8

    if-le p0, v1, :cond_2f

    return v0

    .line 144
    :cond_2f
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p0

    array-length v2, p0

    move v3, v0

    :goto_39
    const/4 v4, 0x1

    if-ge v3, v2, :cond_7b

    aget-object v5, p0, v3

    .line 145
    invoke-virtual {v5}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v6

    if-eq v6, v4, :cond_5a

    invoke-virtual {v5}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5a

    .line 146
    invoke-virtual {v5}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_5a

    .line 147
    invoke-virtual {v5}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v4

    const/4 v6, 0x6

    if-eq v4, v6, :cond_5a

    return v0

    .line 150
    :cond_5a
    invoke-virtual {v5}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v4

    if-eqz v4, :cond_68

    invoke-virtual {v5}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v4

    array-length v4, v4

    if-le v4, v1, :cond_68

    return v0

    .line 153
    :cond_68
    invoke-virtual {v5}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v4

    if-eqz v4, :cond_78

    .line 154
    invoke-virtual {v5}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_78

    return v0

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 159
    :cond_7b
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result p0

    const/4 v1, 0x5

    if-lt p0, v1, :cond_105

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result p0

    const/16 v1, 0x12c

    if-le p0, v1, :cond_94

    goto/16 :goto_105

    .line 165
    :cond_94
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result p0

    const/16 v1, 0x3c

    if-lt p0, v1, :cond_105

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result p0

    const/16 v1, 0xe10

    if-le p0, v1, :cond_ad

    goto :goto_105

    .line 170
    :cond_ad
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result p0

    if-lt p0, v4, :cond_105

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result p0

    const/16 v1, 0xa

    if-le p0, v1, :cond_c4

    goto :goto_105

    .line 177
    :cond_c4
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v1

    if-gt p0, v1, :cond_105

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v1

    if-le p0, v1, :cond_e9

    goto :goto_105

    .line 183
    :cond_e9
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_104

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 p1, 0x14

    if-le p0, p1, :cond_104

    return v0

    :cond_104
    return v4

    :cond_105
    :goto_105
    return v0
.end method

.method private static synthetic blacklist lambda$notifyMessenger$0(Ljava/util/Set;Landroid/telephony/CellInfo;)Z
    .registers 2

    .line 237
    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->doesCellInfoCorrespondToKnownMccMnc(Landroid/telephony/CellInfo;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private blacklist logEmptyResultOrException(Landroid/os/AsyncResult;)V
    .registers 4

    .line 124
    iget-object p0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const-string v0, "ScanRequestTracker"

    if-nez p0, :cond_c

    const-string p0, "NetworkScanResult: Empty result"

    .line 125
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 127
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkScanResult: Exception: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method

.method private blacklist notifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;",
            "II",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/os/Messenger;

    move-result-object p0

    .line 226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 227
    iput p2, v0, Landroid/os/Message;->what:I

    .line 228
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 229
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result p3

    iput p3, v0, Landroid/os/Message;->arg2:I

    if-eqz p4, :cond_5e

    const/4 p3, 0x4

    if-ne p2, p3, :cond_44

    .line 233
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->getAllowedMccMncsForLocationRestrictedScan(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    .line 236
    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    .line 237
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 238
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object p4, p1

    check-cast p4, Ljava/util/List;

    .line 241
    :cond_44
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/telephony/CellInfo;

    invoke-interface {p4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/CellInfo;

    .line 242
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "scanResult"

    .line 243
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 244
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_61

    :cond_5e
    const/4 p1, 0x0

    .line 246
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    :goto_61
    :try_start_61
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_7c

    :catch_65
    move-exception p0

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception in notifyMessenger: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScanRequestTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    return-void
.end method


# virtual methods
.method public blacklist startNetworkScan(ZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Lcom/android/internal/telephony/Phone;IILjava/lang/String;)I
    .registers 23

    move-object v11, p0

    .line 644
    iget-object v0, v11, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mNextNetworkScanRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v12

    .line 645
    new-instance v13, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v12

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;ILcom/android/internal/telephony/Phone;IILjava/lang/String;Z)V

    .line 649
    iget-object v0, v11, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return v12
.end method

.method public blacklist stopNetworkScan(II)V
    .registers 5

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    monitor-enter v0

    .line 661
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$fgetmLiveRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$fgetmLiveRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne p1, v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$fgetmLiveRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-eq p2, v1, :cond_43

    :cond_23
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$fgetmPendingRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$fgetmPendingRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne p1, v1, :cond_50

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$fgetmPendingRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne p2, v1, :cond_50

    .line 668
    :cond_43
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 672
    monitor-exit v0

    return-void

    .line 670
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scan with id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6c
    move-exception p0

    .line 672
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw p0
.end method
