.class public Lcom/android/server/asks/ADPOperation;
.super Ljava/lang/Object;
.source "ADPOperation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AASA_ADPOperation_ADP"


# direct methods
.method public static synthetic $r8$lambda$DNIUWDTg1Ag2IJ1fiRjPYmGdMmw(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->lambda$filterADPPolicy$2(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$V5zHYLeleTVEGbsLv2FGuDowQ-E(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->lambda$isSameCategoryByHashCode$0(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jWrD1c2E9Dxp3kP7ZaUGfSpzk0Q(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->lambda$isSameCategoryByPattern$1(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContainsList(Ljava/util/ArrayList;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ")Z"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 233
    invoke-static {v0, p1}, Lcom/android/server/asks/ADPOperation;->isAbsolutelyEqual(Lcom/android/server/asks/ADPContainer$ADPPolicy;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static copyADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Lcom/android/server/asks/ADPContainer$ADPPolicy;
    .registers 4

    .line 145
    new-instance v0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    invoke-direct {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;-><init>()V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_pattern(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_hashCode(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_versionType(I)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_format(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    .line 148
    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->createADPPolicy()Lcom/android/server/asks/ADPContainer$ADPPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static filterADPPolicy(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda2;-><init>()V

    new-instance v1, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static filterADPPolicy(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    .line 58
    :goto_10
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-gt p1, v1, :cond_20

    .line 59
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    .line 62
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getRegexFromVType(I)Ljava/util/regex/Pattern;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const-string p0, ""

    goto :goto_19

    :cond_e
    const-string p0, "^(\\d?\\d{4})\\d{2}(\\d{3})\\z"

    goto :goto_19

    :cond_11
    const-string p0, "^(\\d?\\d{6})\\d{3}\\z"

    goto :goto_19

    :cond_14
    const-string p0, "^(\\d?\\d{9})\\z"

    goto :goto_19

    :cond_17
    const-string p0, "^(\\d?\\d{4})\\d{5}\\z"

    .line 49
    :goto_19
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static isAbsolutelyEqual(Lcom/android/server/asks/ADPContainer$ADPPolicy;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 5

    .line 214
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/asks/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 217
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/asks/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 220
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    if-eq v0, v2, :cond_2a

    return v1

    .line 223
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_39

    return v1

    :cond_39
    const/4 p0, 0x1

    return p0
.end method

.method public static isEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 73
    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 74
    invoke-static {p0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 103
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p1

    .line 104
    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_d

    if-ne p1, p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_c

    :cond_6
    const/4 p0, 0x0

    goto :goto_c

    .line 209
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_c
    return p0
.end method

.method public static isGreater(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 67
    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isGreater(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGreater(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 89
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p1

    .line 90
    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_d

    if-le p1, p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 79
    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 80
    invoke-static {p0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGreaterOrEqual(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 4

    .line 116
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v0

    const v1, 0x65837583

    if-ne v0, v1, :cond_22

    .line 118
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 p0, 0x0

    goto :goto_2e

    .line 121
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_2e

    .line 124
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_2e
    return p0
.end method

.method public static isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 134
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p1

    .line 135
    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_d

    if-lt p1, p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isMatchPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 26
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isSameCategoryByHashCode(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSameCategoryByPattern(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$filterADPPolicy$2(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$isSameCategoryByHashCode$0(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 2

    .line 240
    invoke-virtual {p1, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->findMatcherByHashCode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$isSameCategoryByPattern$1(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 2

    .line 244
    invoke-virtual {p1, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->findMatcherByPattern(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static printADPContainer(Lcom/android/server/asks/ADPContainer;)V
    .registers 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[+] HASHVALUE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AASA_ADPOperation_ADP"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 168
    invoke-static {v0}, Lcom/android/server/asks/ADPOperation;->printADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)V

    goto :goto_22

    :cond_32
    return-void
.end method

.method public static printADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)V
    .registers 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tpattern = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AASA_ADPOperation_ADP"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  hashCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  versionType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  format = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void
.end method

.method public static printDebug(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ADPContainer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AASA_ADPOperation_ADP"

    const-string/jumbo v1, "print adp container"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ADPContainer;

    .line 182
    invoke-static {v1}, Lcom/android/server/asks/ADPOperation;->printADPContainer(Lcom/android/server/asks/ADPContainer;)V

    goto :goto_10

    :cond_26
    return-void
.end method

.method public static removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 192
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 194
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 197
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 198
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_9

    .line 200
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_36
    return-object v0
.end method
