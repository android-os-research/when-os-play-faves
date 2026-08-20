.class public final Lcom/android/server/integrity/model/IntegrityCheckResult;
.super Ljava/lang/Object;
.source "IntegrityCheckResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;
    }
.end annotation


# instance fields
.field public final mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

.field public final mRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7R5dI0EzN7bSJcTl6vjvBZDdveA(Landroid/content/integrity/Rule;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->lambda$isCausedByAppCertRule$0(Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Rr3Ve_Mln_IcycjIZ9OQLZ-yWGs(Landroid/content/integrity/Rule;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->lambda$isCausedByInstallerRule$1(Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 46
    iput-object p2, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    return-void
.end method

.method public static allow()Lcom/android/server/integrity/model/IntegrityCheckResult;
    .registers 3

    .line 63
    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult;

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/integrity/model/IntegrityCheckResult;-><init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V

    return-object v0
.end method

.method public static allow(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)",
            "Lcom/android/server/integrity/model/IntegrityCheckResult;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult;

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    invoke-direct {v0, v1, p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;-><init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V

    return-object v0
.end method

.method public static deny(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)",
            "Lcom/android/server/integrity/model/IntegrityCheckResult;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult;

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->DENY:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    invoke-direct {v0, v1, p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;-><init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic lambda$isCausedByAppCertRule$0(Landroid/content/integrity/Rule;)Z
    .registers 1

    .line 102
    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->isAppCertificateFormula()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$isCausedByInstallerRule$1(Landroid/content/integrity/Rule;)Z
    .registers 1

    .line 107
    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->isInstallerFormula()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    return-object p0
.end method

.method public getLoggingResponse()I
    .registers 3

    .line 89
    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v0

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->DENY:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    if-ne v0, v1, :cond_a

    const/4 p0, 0x2

    return p0

    .line 91
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v0

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x1

    return p0

    .line 93
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v0

    if-ne v0, v1, :cond_30

    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_30

    const/4 p0, 0x3

    return p0

    .line 96
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "IntegrityCheckResult is not valid."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMatchedRules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    return-object p0
.end method

.method public isCausedByAppCertRule()Z
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/integrity/model/IntegrityCheckResult$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isCausedByInstallerRule()Z
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/integrity/model/IntegrityCheckResult$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
