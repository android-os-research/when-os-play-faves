.class public Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;
.super Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSetupRetryRule"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 10

    .line 403
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s*,\\s*"

    .line 406
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 407
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    const-string v4, "illegal rule "

    if-ge v3, v1, :cond_5d

    aget-object v5, v0, v3

    .line 408
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s*=\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 409
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_48

    .line 412
    aget-object v4, v5, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    .line 413
    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "capabilities"

    .line 414
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 415
    invoke-static {v5}, Lcom/android/internal/telephony/data/DataUtils;->getNetworkCapabilitiesFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 410
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 419
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    const/4 v0, -0x1

    .line 420
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    goto :goto_95

    .line 421
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Should have either valid network capabilities or fail causes."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_95
    :goto_95
    return-void
.end method


# virtual methods
.method public blacklist canBeMatched(II)Z
    .registers 5

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    return v1

    .line 450
    :cond_16
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2a

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    .line 451
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    :cond_2a
    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public blacklist getNetworkCapabilities()Ljava/util/Set;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataSetupRetryRule: Network capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    .line 457
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule$$ExternalSyntheticLambda0;-><init>()V

    .line 458
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 457
    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilitiesToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Fail causes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Retry intervals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Maximum retries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
