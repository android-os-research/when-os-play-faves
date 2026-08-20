.class public final Lcom/android/server/integrity/engine/RuleEvaluator;
.super Ljava/lang/Object;
.source "RuleEvaluator.java"


# direct methods
.method public static synthetic $r8$lambda$-bnpkV8rd_UVNoV7W_dUvmV2nrE(Landroid/content/integrity/Rule;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/engine/RuleEvaluator;->lambda$evaluateRules$1(Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GJDMRD8Iqxqinj3POpBqo6Ha8Us(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator;->lambda$evaluateRules$0(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Xtm0wfLEyGa-Ejtza6VErwktC_M(Landroid/content/integrity/Rule;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/engine/RuleEvaluator;->lambda$evaluateRules$2(Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluateRules(Ljava/util/List;Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Lcom/android/server/integrity/model/IntegrityCheckResult;"
        }
    .end annotation

    .line 54
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;-><init>(Landroid/content/integrity/AppInstallMetadata;)V

    .line 55
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 56
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 60
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;-><init>()V

    .line 61
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 62
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 65
    invoke-static {p1}, Lcom/android/server/integrity/model/IntegrityCheckResult;->allow(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object p0

    return-object p0

    .line 70
    :cond_39
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda2;-><init>()V

    .line 71
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 72
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 74
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5b

    .line 75
    invoke-static {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->deny(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object p0

    return-object p0

    .line 79
    :cond_5b
    invoke-static {}, Lcom/android/server/integrity/model/IntegrityCheckResult;->allow()Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$evaluateRules$0(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z
    .registers 2

    .line 55
    invoke-virtual {p1}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$evaluateRules$1(Landroid/content/integrity/Rule;)Z
    .registers 2

    .line 61
    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getEffect()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static synthetic lambda$evaluateRules$2(Landroid/content/integrity/Rule;)Z
    .registers 1

    .line 71
    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getEffect()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
