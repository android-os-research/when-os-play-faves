.class public Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;
.super Ljava/lang/Object;
.source "RuleIndexingDetailsIdentifier.java"


# direct methods
.method public static synthetic $r8$lambda$2-7USV2PGsqHKTPfeYoD9f-GBXE(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->lambda$getIndexingDetailsForCompoundFormula$1(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XdCVWFeqF91DwScOraCUX_35RmQ(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->lambda$getIndexingDetailsForCompoundFormula$2(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YxyMyJNX-y41idLEHssPGRsXmv0(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->lambda$getIndexingDetailsForCompoundFormula$0(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jp-n_A1FQzC4xqMfrQ4tr53aPks(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->lambda$getIndexingDetailsForCompoundFormula$3(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .registers 5

    .line 80
    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->getTag()I

    move-result v0

    if-eqz v0, :cond_39

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2c

    const/4 v2, 0x4

    if-ne v0, v2, :cond_14

    goto :goto_2c

    .line 92
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->getTag()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "Invalid formula tag type: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2c
    :goto_2c
    new-instance p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    invoke-direct {p0, v3}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(I)V

    return-object p0

    .line 84
    :cond_32
    check-cast p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetailsForStringAtomicFormula(Landroid/content/integrity/AtomicFormula$StringAtomicFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object p0

    return-object p0

    .line 82
    :cond_39
    check-cast p0, Landroid/content/integrity/CompoundFormula;

    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetailsForCompoundFormula(Landroid/content/integrity/CompoundFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static getIndexingDetailsForCompoundFormula(Landroid/content/integrity/CompoundFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .registers 4

    .line 99
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    .line 135
    new-instance p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    invoke-direct {p0, v1}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(I)V

    return-object p0

    .line 107
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda0;-><init>()V

    .line 108
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;-><init>()V

    .line 109
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 113
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    return-object p0

    .line 119
    :cond_3b
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda2;-><init>()V

    .line 120
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda3;-><init>()V

    .line 121
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 123
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 125
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    return-object p0

    .line 129
    :cond_62
    new-instance p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    invoke-direct {p0, v1}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(I)V

    return-object p0
.end method

.method public static getIndexingDetailsForStringAtomicFormula(Landroid/content/integrity/AtomicFormula$StringAtomicFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .registers 3

    .line 141
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    if-eq v0, v1, :cond_10

    .line 147
    new-instance p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(I)V

    return-object p0

    .line 145
    :cond_10
    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 143
    :cond_1b
    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$getIndexingDetailsForCompoundFormula$0(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .registers 1

    .line 108
    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getIndexingDetailsForCompoundFormula$1(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->getIndexType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static synthetic lambda$getIndexingDetailsForCompoundFormula$2(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .registers 1

    .line 120
    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getIndexingDetailsForCompoundFormula$3(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->getIndexType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static splitRulesIntoIndexBuckets(Ljava/util/List;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_99

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/integrity/Rule;

    .line 60
    :try_start_3e
    invoke-virtual {v3}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object v4
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_84

    .line 66
    invoke-virtual {v4}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->getIndexType()I

    move-result v5

    .line 67
    invoke-virtual {v4}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->getRuleKey()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 62
    :catch_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v3}, Landroid/content/integrity/Rule;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Malformed rule identified. [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    return-object v0

    .line 46
    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Index buckets cannot be created for null rule list."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
