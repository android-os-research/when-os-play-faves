.class public Lorg/apache/commons/lang3/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private preserveEscapes:Z

.field private suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private variableResolver:Lorg/apache/commons/lang3/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "${"

    .line 138
    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const-string v0, "}"

    .line 142
    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const-string v0, ":-"

    .line 147
    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 248
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/4 v2, 0x0

    const/16 v3, 0x24

    invoke-direct {p0, v2, v0, v1, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 272
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object p1

    const/16 v0, 0x24

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 287
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 304
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    .line 313
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 328
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 329
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 330
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 331
    sget-object p1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    .line 347
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 348
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 349
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 350
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 351
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    .line 366
    sget-object v5, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;CLorg/apache/commons/lang3/text/StrMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;CLorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "C",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            ")V"
        }
    .end annotation

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    .line 383
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 384
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 385
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 386
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 387
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 901
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 904
    :cond_7
    new-instance p0, Lorg/apache/commons/lang3/text/StrBuilder;

    const/16 p1, 0x100

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    const-string p1, "Infinite loop in property interpolation of "

    .line 905
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 p1, 0x0

    .line 906
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    const-string p1, ": "

    .line 907
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    const-string p1, "->"

    .line 908
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 909
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 206
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_7

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 223
    :goto_10
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 224
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 228
    :cond_24
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 239
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrLookup;->systemPropertiesLookup()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 759
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v4

    .line 760
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v5

    .line 761
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getEscapeChar()C

    move-result v6

    .line 762
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getValueDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v7

    .line 763
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v8

    if-nez p4, :cond_20

    const/4 v11, 0x1

    goto :goto_21

    :cond_20
    const/4 v11, 0x0

    .line 768
    :goto_21
    iget-object v12, v1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v13, v2, v3

    move v15, v2

    move v14, v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v12

    move-object/from16 v12, p4

    :goto_2e
    if-ge v15, v14, :cond_153

    .line 772
    invoke-virtual {v4, v13, v15, v2, v14}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v18

    if-nez v18, :cond_44

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_149

    :cond_44
    if-le v15, v2, :cond_6b

    add-int/lit8 v10, v15, -0x1

    .line 778
    aget-char v9, v13, v10

    if-ne v9, v6, :cond_6b

    .line 780
    iget-boolean v9, v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    if-eqz v9, :cond_53

    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    .line 784
    :cond_53
    invoke-virtual {v1, v10}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteCharAt(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 785
    iget-object v9, v1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object v13, v9

    move/from16 v23, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v17, 0x1

    goto/16 :goto_149

    :cond_6b
    add-int v9, v15, v18

    move v10, v9

    const/16 v19, 0x0

    :goto_70
    if-ge v10, v14, :cond_13e

    if-eqz v8, :cond_7f

    .line 797
    invoke-virtual {v4, v13, v10, v2, v14}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    if-eqz v20, :cond_7f

    add-int/lit8 v19, v19, 0x1

    add-int v10, v10, v20

    goto :goto_70

    .line 805
    :cond_7f
    invoke-virtual {v5, v13, v10, v2, v14}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    if-nez v20, :cond_88

    add-int/lit8 v10, v10, 0x1

    goto :goto_70

    :cond_88
    if-nez v19, :cond_12a

    move-object/from16 v21, v5

    .line 812
    new-instance v5, Ljava/lang/String;

    sub-int v19, v10, v15

    move/from16 v22, v6

    sub-int v6, v19, v18

    invoke-direct {v5, v13, v9, v6}, Ljava/lang/String;-><init>([CII)V

    if-eqz v8, :cond_aa

    .line 816
    new-instance v6, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v6, v5}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v6}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9, v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 818
    invoke-virtual {v6}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_aa
    add-int v10, v10, v20

    if-eqz v7, :cond_e1

    .line 827
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    move/from16 v23, v11

    const/4 v6, 0x0

    .line 829
    :goto_b5
    array-length v11, v9

    if-ge v6, v11, :cond_de

    if-nez v8, :cond_c2

    .line 831
    array-length v11, v9

    .line 832
    invoke-virtual {v4, v9, v6, v6, v11}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v11

    if-eqz v11, :cond_c2

    goto :goto_de

    .line 835
    :cond_c2
    invoke-virtual {v7, v9, v6}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CI)I

    move-result v11

    if-eqz v11, :cond_d6

    move-object/from16 v24, v4

    const/4 v4, 0x0

    .line 836
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v6, v11

    .line 837
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v9

    goto :goto_e7

    :cond_d6
    move-object/from16 v24, v4

    const/4 v4, 0x0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v24

    goto :goto_b5

    :cond_de
    :goto_de
    move-object/from16 v24, v4

    goto :goto_e5

    :cond_e1
    move-object/from16 v24, v4

    move/from16 v23, v11

    :goto_e5
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_e7
    if-nez v12, :cond_f6

    .line 845
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 846
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v13, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_f6
    invoke-direct {v0, v5, v12}, Lorg/apache/commons/lang3/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 852
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v0, v5, v1, v15, v10}, Lorg/apache/commons/lang3/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_103

    goto :goto_104

    :cond_103
    move-object v6, v5

    :goto_104
    if-eqz v6, :cond_11f

    .line 862
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 863
    invoke-virtual {v1, v15, v10, v6}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 865
    invoke-direct {v0, v1, v15, v5, v12}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v6

    add-int/2addr v6, v5

    sub-int v5, v10, v15

    sub-int/2addr v6, v5

    add-int/2addr v10, v6

    add-int/2addr v14, v6

    add-int v16, v16, v6

    .line 872
    iget-object v13, v1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v15, v10

    const/16 v17, 0x1

    goto :goto_120

    :cond_11f
    move v15, v10

    .line 878
    :goto_120
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_149

    :cond_12a
    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    add-int/lit8 v19, v19, -0x1

    add-int v10, v10, v20

    move/from16 v6, v22

    move-object/from16 v4, v24

    goto/16 :goto_70

    :cond_13e
    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    move v15, v10

    :goto_149
    move-object/from16 v5, v21

    move/from16 v6, v22

    move/from16 v11, v23

    move-object/from16 v4, v24

    goto/16 :goto_2e

    :cond_153
    move/from16 v23, v11

    if-eqz v23, :cond_158

    return v17

    :cond_158
    return v16
.end method


# virtual methods
.method public getEscapeChar()C
    .registers 1

    .line 945
    iget-char p0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    return p0
.end method

.method public getValueDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 1

    .line 1104
    iget-object p0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object p0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 1

    .line 971
    iget-object p0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object p0
.end method

.method public getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;"
        }
    .end annotation

    .line 1171
    iget-object p0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    return-object p0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 1

    .line 1036
    iget-object p0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object p0
.end method

.method public isEnableSubstitutionInVariables()Z
    .registers 1

    .line 1192
    iget-boolean p0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return p0
.end method

.method public isPreserveEscapes()Z
    .registers 1

    .line 1217
    iget-boolean p0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    return p0
.end method

.method public replace(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 525
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 546
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 547
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 548
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 604
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 605
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 606
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 402
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result p0

    if-nez p0, :cond_15

    return-object p1

    .line 406
    :cond_15
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 425
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result p0

    if-nez p0, :cond_1a

    add-int/2addr p3, p2

    .line 427
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 429
    :cond_1a
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 485
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 487
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 507
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 508
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 509
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 564
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 566
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 586
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 587
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 588
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace([C)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 445
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 446
    array-length p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 447
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replace([CII)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 467
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 468
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 469
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 622
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result p0

    return p0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 642
    :cond_4
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v1

    .line 643
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result p0

    if-nez p0, :cond_14

    return v0

    :cond_14
    add-int/2addr p3, p2

    .line 646
    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p0, 0x1

    return p0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 664
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result p0

    return p0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 685
    :cond_4
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v1

    .line 686
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result p0

    if-nez p0, :cond_14

    return v0

    :cond_14
    add-int/2addr p3, p2

    .line 689
    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 705
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result p0

    return p0
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 724
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result p0

    return p0
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .registers 5

    .line 930
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 934
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .registers 2

    .line 1206
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return-void
.end method

.method public setEscapeChar(C)V
    .registers 2

    .line 956
    iput-char p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    return-void
.end method

.method public setPreserveEscapes(Z)V
    .registers 2

    .line 1233
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    return-void
.end method

.method public setValueDelimiter(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 2

    .line 1138
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 3

    .line 1156
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    .line 1157
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    return-object p0

    .line 1160
    :cond_b
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 2

    .line 1122
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 2

    .line 1004
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 2

    if-eqz p1, :cond_b

    .line 1021
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object p0

    return-object p0

    .line 1019
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable prefix must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 2

    if-eqz p1, :cond_5

    .line 989
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object p0

    .line 987
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable prefix matcher must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    .line 1180
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 2

    .line 1069
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 2

    if-eqz p1, :cond_b

    .line 1086
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object p0

    return-object p0

    .line 1084
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable suffix must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .registers 2

    if-eqz p1, :cond_5

    .line 1054
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object p0

    .line 1052
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable suffix matcher must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .registers 5

    const/4 v0, 0x0

    .line 743
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result p0

    if-lez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method
