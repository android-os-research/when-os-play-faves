.class public Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;
.super Ljava/lang/Object;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataRetryRule"
.end annotation


# instance fields
.field protected blacklist mFailCauses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mMaxRetries:I

.field protected blacklist mNetworkCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mRetryIntervalsMillis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$EWLevEJY_I7REuXK6Kw1xbGpZNo(Ljava/lang/Long;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->lambda$new$0(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 14

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    const/16 v0, 0xa

    .line 266
    iput v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    .line 274
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mNetworkCapabilities:Ljava/util/Set;

    .line 280
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "illegal rule "

    if-nez v0, :cond_17c

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s*,\\s*"

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 288
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_42
    if-ge v4, v2, :cond_12a

    aget-object v5, v0, v4

    .line 289
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s*=\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 290
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_115

    .line 293
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    .line 294
    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v9, -0x1

    .line 296
    :try_start_62
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x3926d9d9

    if-eq v10, v11, :cond_8a

    const v11, -0x2a0ede95

    if-eq v10, v11, :cond_80

    const v11, 0x16e7707c

    if-eq v10, v11, :cond_76

    goto :goto_93

    :cond_76
    const-string v10, "retry_interval"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    move v9, v8

    goto :goto_93

    :cond_80
    const-string v10, "fail_causes"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    move v9, v3

    goto :goto_93

    :cond_8a
    const-string v10, "maximum_retries"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_90} :catch_f4

    if-eqz v6, :cond_93

    move v9, v7

    :cond_93
    :goto_93
    const-string v6, "\\s*\\|\\s*"

    if-eqz v9, :cond_ca

    if-eq v9, v8, :cond_a3

    if-eq v9, v7, :cond_9c

    goto :goto_f0

    .line 310
    :cond_9c
    :try_start_9c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    goto :goto_f0

    .line 304
    :cond_a3
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda0;-><init>()V

    .line 305
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda1;-><init>()V

    .line 306
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 307
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    goto :goto_f0

    .line 298
    :cond_ca
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda0;-><init>()V

    .line 299
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda0;-><init>()V

    .line 300
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 301
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    iput-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_f0} :catch_f4

    :goto_f0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_42

    :catch_f4
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_115
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_12a
    iget p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    if-nez p1, :cond_134

    .line 320
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    .line 323
    :cond_134
    iget p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    if-ltz p1, :cond_163

    .line 328
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_14a

    return-void

    .line 329
    :cond_14a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry interval should not be less than 0. mRetryIntervalsMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_163
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max retries should not be less than 0. mMaxRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_17c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic blacklist lambda$new$0(Ljava/lang/Long;)Z
    .registers 5

    .line 328
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public blacklist getFailCauses()Ljava/util/Set;
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

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mFailCauses:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getMaxRetries()I
    .registers 1

    .line 349
    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mMaxRetries:I

    return p0
.end method

.method public blacklist getRetryIntervalsMillis()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->mRetryIntervalsMillis:Ljava/util/List;

    return-object p0
.end method
