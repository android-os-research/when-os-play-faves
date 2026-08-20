.class final Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;
.super Landroid/telephony/data/IQualifiedNetworksServiceCallback$Stub;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QualifiedNetworksServiceCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$3Py07wBHNfQJ0MrhbNjs7kKsNdE(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->lambda$onQualifiedNetworkTypesChanged$1(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BG0wW5POFIg6aTztH21YI7NsD84(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->lambda$onQualifiedNetworkTypesChanged$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Tgby1AjJt-SP1NzMhTgJFkrLiH4(ILcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->lambda$onQualifiedNetworkTypesChanged$2(ILcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0}, Landroid/telephony/data/IQualifiedNetworksServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    return-void
.end method

.method private static synthetic blacklist lambda$onQualifiedNetworkTypesChanged$0(I)Z
    .registers 1

    .line 367
    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->isValidAccessNetwork(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic blacklist lambda$onQualifiedNetworkTypesChanged$1(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;I)V
    .registers 2

    .line 396
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->apnTypeToNetworkCapability(I)I

    move-result p1

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;->onPreferredTransportChanged(I)V

    return-void
.end method

.method private static synthetic blacklist lambda$onQualifiedNetworkTypesChanged$2(ILcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 3

    .line 394
    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onHandoverEnabledChanged(I)V
    .registers 5

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandoverEnabledChanged supportedApnTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mIsHandoverEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;)I

    move-result v0

    if-eq v0, p1, :cond_44

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fputmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;I)V

    .line 419
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmHandoverEnabledChangedRegistrants(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_44
    return-void
.end method

.method public blacklist onQualifiedNetworkTypesChanged(I[I)V
    .registers 11

    if-nez p2, :cond_a

    .line 356
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const-string p1, "onQualifiedNetworkTypesChanged: Ignored null input."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQualifiedNetworkTypesChanged: apnTypes = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], networks = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks$$ExternalSyntheticLambda0;-><init>()V

    .line 363
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 366
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 368
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid access networks "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    sget-object v1, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7d
    if-ge v3, v2, :cond_10e

    aget v4, v1, v3

    and-int v5, p1, v4

    if-ne v5, v4, :cond_10a

    .line 375
    iget-object v5, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c3

    .line 376
    iget-object v5, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-static {v5, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 378
    iget-object v5, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Available networks for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not changed."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-static {v5, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    goto :goto_10a

    .line 387
    :cond_c3
    array-length v5, p2

    if-nez v5, :cond_f9

    .line 388
    iget-object v5, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 389
    iget-object v5, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10a

    .line 391
    iget-object v5, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmPreferredTransports(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    .line 392
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 391
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v5, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAccessNetworksManagerCallbacks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Set;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_10a

    .line 399
    :cond_f9
    iget-object v5, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    new-instance v5, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    invoke-direct {v5, v4, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;-><init>(I[I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10a
    :goto_10a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7d

    .line 407
    :cond_10e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_122

    .line 408
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$msetPreferredTransports(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/util/List;)V

    .line 409
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmQualifiedNetworksChangedRegistrants(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_122
    return-void
.end method
