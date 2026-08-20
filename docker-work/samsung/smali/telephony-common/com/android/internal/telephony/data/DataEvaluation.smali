.class public Lcom/android/internal/telephony/data/DataEvaluation;
.super Ljava/lang/Object;
.source "DataEvaluation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;,
        Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;,
        Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;
    }
.end annotation


# instance fields
.field private blacklist mCandidateDataProfile:Landroid/telephony/data/DataProfile;

.field private blacklist mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field private final blacklist mDataDisallowedReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataEvaluationReason:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field private blacklist mEvaluatedTime:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    .line 45
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NONE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mCandidateDataProfile:Landroid/telephony/data/DataProfile;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mEvaluatedTime:J

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataEvaluationReason:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    return-void
.end method


# virtual methods
.method public blacklist addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_13

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 97
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mEvaluatedTime:J

    return-void
.end method

.method public blacklist addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V
    .registers 4

    .line 68
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NONE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mEvaluatedTime:J

    return-void
.end method

.method public blacklist contains(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)Z
    .registers 2

    .line 177
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public blacklist contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public varargs blacklist containsAny([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z
    .registers 7

    .line 164
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    .line 165
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    return v1
.end method

.method public blacklist containsDisallowedReasons()Z
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist containsHardDisallowedReasons()Z
    .registers 2

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 185
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->isHardReason()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist containsOnly(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public blacklist getCandidateDataProfile()Landroid/telephony/data/DataProfile;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mCandidateDataProfile:Landroid/telephony/data/DataProfile;

    return-object p0
.end method

.method public blacklist getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    return-object p0
.end method

.method public blacklist getDataDisallowedReasons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist removeDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mEvaluatedTime:J

    return-void
.end method

.method public blacklist setCandidateDataProfile(Landroid/telephony/data/DataProfile;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mCandidateDataProfile:Landroid/telephony/data/DataProfile;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data evaluation: evaluation reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataEvaluationReason:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, " "

    if-lez v1, :cond_48

    const-string v1, "Data disallowed reasons:"

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataDisallowedReasons:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_48
    const-string v1, "Data allowed reason:"

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", candidate profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mCandidateDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/telephony/data/DataEvaluation;->mEvaluatedTime:J

    invoke-static {v2, v3}, Lcom/android/internal/telephony/data/DataUtils;->systemTimeToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
