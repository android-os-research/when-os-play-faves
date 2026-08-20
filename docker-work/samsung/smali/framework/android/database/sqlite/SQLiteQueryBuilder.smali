.class public Landroid/database/sqlite/SQLiteQueryBuilder;
.super Ljava/lang/Object;
.source "SQLiteQueryBuilder.java"


# static fields
.field private static final blacklist STRICT_COLUMNS:I = 0x2

.field private static final blacklist STRICT_GRAMMAR:I = 0x4

.field private static final blacklist STRICT_PARENTHESES:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteQueryBuilder"

.field private static final blacklist sAggregationPattern:Ljava/util/regex/Pattern;


# instance fields
.field private greylist-max-p mDistinct:Z

.field private greylist-max-o mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private blacklist mProjectionGreylist:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStrictFlags:I

.field private greylist-max-p mTables:Ljava/lang/String;

.field private greylist-max-p mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method public static synthetic blacklist $r8$lambda$vWgZ-cU25kKKiVQEmRTiAYoKsCE(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictToken(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const-string v0, "(?i)(AVG|COUNT|MAX|MIN|SUM|TOTAL|GROUP_CONCAT)\\((.+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteQueryBuilder;->sAggregationPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 59
    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/Collection;

    .line 61
    const-string v1, ""

    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 77
    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 78
    return-void
.end method

.method private static greylist-max-o appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clause"    # Ljava/lang/String;

    .line 404
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 405
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_c
    return-void
.end method

.method public static whitelist appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 6
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "columns"    # [Ljava/lang/String;

    .line 415
    array-length v0, p1

    .line 417
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_15

    .line 418
    aget-object v2, p1, v1

    .line 420
    .local v2, "column":Ljava/lang/String;
    if-eqz v2, :cond_12

    .line 421
    if-lez v1, :cond_f

    .line 422
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_f
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .end local v2    # "column":Ljava/lang/String;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 427
    .end local v1    # "i":I
    :cond_15
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    return-void
.end method

.method public static whitelist buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "distinct"    # Z
    .param p1, "tables"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;

    .line 376
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 377
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HAVING clauses are only permitted when using a groupBy clause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 383
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    if-eqz p0, :cond_28

    .line 385
    const-string v1, "DISTINCT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_28
    if-eqz p2, :cond_31

    array-length v1, p2

    if-eqz v1, :cond_31

    .line 388
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    goto :goto_36

    .line 390
    :cond_31
    const-string v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :goto_36
    const-string v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, " WHERE "

    invoke-static {v0, v1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, " GROUP BY "

    invoke-static {v0, v1, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, " HAVING "

    invoke-static {v0, v1, p5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, " ORDER BY "

    invoke-static {v0, v1, p6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, " LIMIT "

    invoke-static {v0, v1, p7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist computeSingleProjection(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "userColumn"    # Ljava/lang/String;

    .line 1119
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 1120
    return-object p1

    .line 1123
    :cond_5
    const/4 v1, 0x0

    .line 1124
    .local v1, "operator":Ljava/lang/String;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1127
    .local v0, "column":Ljava/lang/String;
    if-nez v0, :cond_2d

    .line 1128
    sget-object v2, Landroid/database/sqlite/SQLiteQueryBuilder;->sAggregationPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1129
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1130
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1131
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 1132
    iget-object v3, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 1136
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_2d
    if-eqz v0, :cond_34

    .line 1137
    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1140
    :cond_34
    iget v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    if-nez v2, :cond_4d

    .line 1141
    const-string v2, " AS "

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, " as "

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1143
    :cond_48
    invoke-static {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1148
    :cond_4d
    iget-object v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/Collection;

    if-eqz v2, :cond_8e

    .line 1149
    const/4 v3, 0x0

    .line 1150
    .local v3, "match":Z
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 1151
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 1152
    const/4 v3, 0x1

    .line 1153
    goto :goto_6f

    .line 1155
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_6e
    goto :goto_56

    .line 1157
    :cond_6f
    :goto_6f
    if-eqz v3, :cond_8e

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowing abusive custom column: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SQLiteQueryBuilder"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-static {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1163
    .end local v3    # "match":Z
    :cond_8e
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist computeSingleProjectionOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userColumn"    # Ljava/lang/String;

    .line 1109
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeSingleProjection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 1111
    return-object v0

    .line 1113
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist enforceStrictColumns(Landroid/content/ContentValues;)V
    .registers 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 775
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    const-string v1, "No projection map defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 777
    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v0

    .line 778
    .local v0, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 779
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 780
    .local v2, "column":Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 778
    .end local v2    # "column":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 781
    .restart local v2    # "column":Ljava/lang/String;
    :cond_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 784
    .end local v1    # "i":I
    .end local v2    # "column":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method private blacklist enforceStrictColumns([Ljava/lang/String;)V
    .registers 4
    .param p1, "projection"    # [Ljava/lang/String;

    .line 769
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    const-string v1, "No projection map defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 771
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeProjection([Ljava/lang/String;)[Ljava/lang/String;

    .line 772
    return-void
.end method

.method private blacklist enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "groupBy"    # Ljava/lang/String;
    .param p3, "having"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;

    .line 788
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 790
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    invoke-static {p2, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 792
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    invoke-static {p3, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 794
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    invoke-static {p4, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 796
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    invoke-static {p5, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 798
    return-void
.end method

.method private blacklist enforceStrictToken(Ljava/lang/String;)V
    .registers 6
    .param p1, "token"    # Ljava/lang/String;

    .line 801
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 802
    :cond_7
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->isTableOrColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 803
    :cond_e
    invoke-static {p1}, Landroid/database/sqlite/SQLiteTokenizer;->isFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 804
    :cond_15
    invoke-static {p1}, Landroid/database/sqlite/SQLiteTokenizer;->isType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    .line 809
    :cond_1c
    invoke-static {p1}, Landroid/database/sqlite/SQLiteTokenizer;->isKeyword(Ljava/lang/String;)Z

    move-result v0

    .line 810
    .local v0, "isAllowedKeyword":Z
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_aa

    :cond_2e
    goto :goto_89

    :sswitch_2f
    const-string v3, "HAVING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v2, 0x4

    goto :goto_89

    :sswitch_39
    const-string v3, "WHERE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v2, 0x2

    goto :goto_89

    :sswitch_43
    const-string v3, "ORDER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v2, 0x7

    goto :goto_89

    :sswitch_4d
    const-string v3, "LIMIT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v2, 0x8

    goto :goto_89

    :sswitch_58
    const-string v3, "GROUP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v2, 0x3

    goto :goto_89

    :sswitch_62
    const-string v3, "FROM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v2, 0x1

    goto :goto_89

    :sswitch_6c
    const-string v3, "WINDOW"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v2, 0x5

    goto :goto_89

    :sswitch_76
    const-string v3, "VALUES"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v2, 0x6

    goto :goto_89

    :sswitch_80
    const-string v3, "SELECT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v2, 0x0

    :goto_89
    packed-switch v2, :pswitch_data_d0

    goto :goto_8e

    .line 820
    :pswitch_8d
    const/4 v0, 0x0

    .line 823
    :goto_8e
    if-eqz v0, :cond_91

    .line 826
    return-void

    .line 824
    :cond_91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_aa
    .sparse-switch
        -0x6e6dd704 -> :sswitch_80
        -0x69876ede -> :sswitch_76
        -0x67613010 -> :sswitch_6c
        0x210faa -> :sswitch_62
        0x40efe5f -> :sswitch_58
        0x451539b -> :sswitch_4d
        0x47f8f2e -> :sswitch_43
        0x4ebc4c7 -> :sswitch_39
        0x7e991825 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
    .end packed-switch
.end method

.method private blacklist isTableOrColumn(Ljava/lang/String;)Z
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .line 1167
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1168
    :cond_a
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeSingleProjection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private static blacklist maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "column"    # Ljava/lang/String;

    .line 1071
    if-eqz p0, :cond_20

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1074
    :cond_20
    return-object p1
.end method

.method private blacklist wrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "arg"    # Ljava/lang/String;

    .line 1198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1199
    return-object p1

    .line 1201
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist appendWhere(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "inWhere"    # Ljava/lang/CharSequence;

    .line 128
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_11

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 131
    :cond_11
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 132
    return-void
.end method

.method public whitelist appendWhereEscapeString(Ljava/lang/String;)V
    .registers 4
    .param p1, "inWhere"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_11

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 148
    :cond_11
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public whitelist appendWhereStandalone(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "inWhere"    # Ljava/lang/CharSequence;

    .line 163
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_11

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 166
    :cond_11
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 167
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_20
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    return-void
.end method

.method public blacklist buildDelete(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "selection"    # Ljava/lang/String;

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 937
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "where":Ljava/lang/String;
    const-string v2, " WHERE "

    invoke-static {v0, v2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist buildInsert(Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 882
    if-eqz p1, :cond_63

    invoke-virtual {p1}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 887
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v1

    .line 892
    .local v1, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v4, 0x2c

    if-ge v2, v3, :cond_40

    .line 893
    if-lez v2, :cond_34

    .line 894
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 896
    :cond_34
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 898
    .end local v2    # "i":I
    :cond_40
    const-string v2, ") VALUES ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_46
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 900
    if-lez v2, :cond_51

    .line 901
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 903
    :cond_51
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 899
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 905
    .end local v2    # "i":I
    :cond_59
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 883
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "groupBy"    # Ljava/lang/String;
    .param p4, "having"    # Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .line 859
    move-object v0, p0

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 860
    .local v9, "projection":[Ljava/lang/String;
    move-object v10, p2

    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 862
    .local v11, "where":Ljava/lang/String;
    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    iget-object v2, v0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    move-object v3, v9

    move-object v4, v11

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 877
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "subQueries"    # [Ljava/lang/String;
    .param p2, "sortOrder"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1055
    .local v0, "query":Ljava/lang/StringBuilder;
    array-length v1, p1

    .line 1056
    .local v1, "subQueryCount":I
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    if-eqz v2, :cond_f

    const-string v2, " UNION "

    goto :goto_11

    :cond_f
    const-string v2, " UNION ALL "

    .line 1058
    .local v2, "unionOperator":Ljava/lang/String;
    :goto_11
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_21

    .line 1059
    if-lez v3, :cond_19

    .line 1060
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    :cond_19
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1064
    .end local v3    # "i":I
    :cond_21
    const-string v3, " ORDER BY "

    invoke-static {v0, v3, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v3, " LIMIT "

    invoke-static {v0, v3, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .param p1, "typeDiscriminatorColumn"    # Ljava/lang/String;
    .param p2, "unionColumns"    # [Ljava/lang/String;
    .param p4, "computedColumnsOffset"    # I
    .param p5, "typeDiscriminatorValue"    # Ljava/lang/String;
    .param p6, "selection"    # Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 993
    .local p3, "columnsPresentInTable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p1

    move-object/from16 v1, p2

    array-length v2, v1

    .line 994
    .local v2, "unionColumnsCount":I
    new-array v10, v2, [Ljava/lang/String;

    .line 996
    .local v10, "projectionIn":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_63

    .line 997
    aget-object v4, v1, v3

    .line 999
    .local v4, "unionColumn":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1000
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v11, p5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v3

    move-object/from16 v13, p3

    move/from16 v12, p4

    goto :goto_60

    .line 1002
    :cond_37
    move-object/from16 v11, p5

    move/from16 v12, p4

    if-le v3, v12, :cond_5c

    .line 1003
    move-object/from16 v13, p3

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    goto :goto_5e

    .line 1006
    :cond_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NULL AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v3

    goto :goto_60

    .line 1002
    :cond_5c
    move-object/from16 v13, p3

    .line 1004
    :goto_5e
    aput-object v4, v10, v3

    .line 996
    .end local v4    # "unionColumn":Ljava/lang/String;
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_63
    move-object/from16 v13, p3

    move/from16 v12, p4

    move-object/from16 v11, p5

    .line 1009
    .end local v3    # "i":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v10

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v3 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "typeDiscriminatorColumn"    # Ljava/lang/String;
    .param p2, "unionColumns"    # [Ljava/lang/String;
    .param p4, "computedColumnsOffset"    # I
    .param p5, "typeDiscriminatorValue"    # Ljava/lang/String;
    .param p6, "selection"    # Ljava/lang/String;
    .param p7, "selectionArgs"    # [Ljava/lang/String;
    .param p8, "groupBy"    # Ljava/lang/String;
    .param p9, "having"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1033
    .local p3, "columnsPresentInTable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist buildUpdate(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;

    .line 911
    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 916
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v1

    .line 921
    .local v1, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 922
    if-lez v2, :cond_34

    .line 923
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 925
    :cond_34
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 929
    .end local v2    # "i":I
    :cond_45
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "where":Ljava/lang/String;
    const-string v3, " WHERE "

    invoke-static {v0, v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 912
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "where":Ljava/lang/String;
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-p computeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p1, "projectionIn"    # [Ljava/lang/String;

    .line 1081
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1082
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 1083
    .local v0, "projectionOut":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 1084
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeSingleProjectionOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1083
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1086
    .end local v1    # "i":I
    :cond_18
    return-object v0

    .line 1087
    .end local v0    # "projectionOut":[Ljava/lang/String;
    :cond_19
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-eqz v0, :cond_54

    .line 1089
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1090
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1091
    .local v1, "projection":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1092
    .local v2, "entryIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 1094
    .local v3, "i":I
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1095
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1098
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "_count"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1099
    goto :goto_2c

    .line 1101
    :cond_47
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v3

    .line 1102
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move v3, v5

    goto :goto_2c

    .line 1103
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_53
    return-object v1

    .line 1105
    .end local v0    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "projection":[Ljava/lang/String;
    .end local v2    # "entryIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "i":I
    :cond_54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist computeWhere(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "selection"    # Ljava/lang/String;

    .line 1173
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1174
    .local v0, "hasInternal":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1176
    .local v1, "hasExternal":Z
    if-nez v0, :cond_15

    if-eqz v1, :cond_13

    goto :goto_15

    .line 1189
    :cond_13
    const/4 v2, 0x0

    return-object v2

    .line 1177
    :cond_15
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1178
    .local v2, "where":Ljava/lang/StringBuilder;
    const/16 v3, 0x29

    const/16 v4, 0x28

    if-eqz v0, :cond_2d

    .line 1179
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1181
    :cond_2d
    if-eqz v0, :cond_36

    if-eqz v1, :cond_36

    .line 1182
    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    :cond_36
    if-eqz v1, :cond_43

    .line 1185
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1187
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 724
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    const-string v1, "No tables defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 725
    const-string v0, "No database defined"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 728
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildDelete(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "unwrappedSql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictGrammar()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 731
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_1f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 747
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 750
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildDelete(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "wrappedSql":Ljava/lang/String;
    nop

    .line 752
    .local v1, "sql":Ljava/lang/String;
    goto :goto_34

    .line 754
    .end local v1    # "sql":Ljava/lang/String;
    :cond_33
    move-object v1, v0

    .line 757
    .restart local v1    # "sql":Ljava/lang/String;
    :goto_34
    move-object v2, p3

    .line 758
    .local v2, "sqlArgs":[Ljava/lang/String;
    const/4 v3, 0x3

    const-string v4, "SQLiteQueryBuilder"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 759
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_61

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with args "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 762
    :cond_61
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_64
    :goto_64
    invoke-static {p1, v1, v2}, Landroid/database/DatabaseUtils;->executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    return v3
.end method

.method public whitelist getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method public whitelist getProjectionGreylist()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/Collection;

    return-object v0
.end method

.method public whitelist getProjectionMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getTables()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 606
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    const-string v1, "No tables defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 607
    const-string v0, "No database defined"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 608
    const-string v0, "No values defined"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictColumns()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 611
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictColumns(Landroid/content/ContentValues;)V

    .line 614
    :cond_1a
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildInsert(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v1

    .line 617
    .local v1, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 618
    .local v2, "valuesLength":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 619
    .local v3, "sqlArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    array-length v5, v3

    if-ge v4, v5, :cond_35

    .line 620
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 619
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 622
    .end local v4    # "i":I
    :cond_35
    const/4 v4, 0x3

    const-string v5, "SQLiteQueryBuilder"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 623
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_61

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with args "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 626
    :cond_61
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_64
    :goto_64
    invoke-static {p1, v0, v3}, Landroid/database/DatabaseUtils;->executeInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v4

    return-wide v4
.end method

.method public whitelist isDistinct()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    return v0
.end method

.method public blacklist isProjectionAggregationAllowed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isStrict()Z
    .registers 3

    .line 278
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isStrictColumns()Z
    .registers 2

    .line 305
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isStrictGrammar()Z
    .registers 2

    .line 344
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .line 463
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .line 502
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 24
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .param p9, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 544
    move-object v7, p0

    iget-object v0, v7, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 545
    const/4 v0, 0x0

    return-object v0

    .line 549
    :cond_7
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 553
    .local v8, "unwrappedSql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictColumns()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 554
    move-object/from16 v9, p2

    invoke-direct {p0, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictColumns([Ljava/lang/String;)V

    goto :goto_26

    .line 553
    :cond_24
    move-object/from16 v9, p2

    .line 556
    :goto_26
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictGrammar()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 557
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_3a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 573
    move-object v10, p1

    move-object/from16 v11, p9

    invoke-virtual {p1, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 576
    move-object/from16 v12, p3

    invoke-direct {p0, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    move-object/from16 v13, p6

    invoke-direct {p0, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 576
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "wrappedSql":Ljava/lang/String;
    nop

    .line 579
    .local v0, "sql":Ljava/lang/String;
    goto :goto_69

    .line 581
    .end local v0    # "sql":Ljava/lang/String;
    :cond_61
    move-object v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    move-object/from16 v11, p9

    move-object v0, v8

    .line 584
    .restart local v0    # "sql":Ljava/lang/String;
    :goto_69
    move-object/from16 v4, p4

    .line 585
    .local v4, "sqlArgs":[Ljava/lang/String;
    const/4 v1, 0x3

    const-string v2, "SQLiteQueryBuilder"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 586
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_97

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with args "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 589
    :cond_97
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_9a
    :goto_9a
    iget-object v2, v7, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v1, v7, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 594
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 592
    move-object v1, p1

    move-object v3, v0

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .registers 2
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 231
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 232
    return-void
.end method

.method public whitelist setDistinct(Z)V
    .registers 2
    .param p1, "distinct"    # Z

    .line 86
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 87
    return-void
.end method

.method public blacklist setProjectionAggregationAllowed(Z)V
    .registers 2
    .param p1, "projectionAggregationAllowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    return-void
.end method

.method public whitelist setProjectionGreylist(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "projectionGreylist":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/regex/Pattern;>;"
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/Collection;

    .line 202
    return-void
.end method

.method public whitelist setProjectionMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "columnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 185
    return-void
.end method

.method public whitelist setStrict(Z)V
    .registers 3
    .param p1, "strict"    # Z

    .line 266
    if-eqz p1, :cond_9

    .line 267
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    goto :goto_f

    .line 269
    :cond_9
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    .line 271
    :goto_f
    return-void
.end method

.method public whitelist setStrictColumns(Z)V
    .registers 3
    .param p1, "strictColumns"    # Z

    .line 293
    if-eqz p1, :cond_9

    .line 294
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    goto :goto_f

    .line 296
    :cond_9
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    .line 298
    :goto_f
    return-void
.end method

.method public whitelist setStrictGrammar(Z)V
    .registers 3
    .param p1, "strictGrammar"    # Z

    .line 332
    if-eqz p1, :cond_9

    .line 333
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    goto :goto_f

    .line 335
    :cond_9
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    .line 337
    :goto_f
    return-void
.end method

.method public whitelist setTables(Ljava/lang/String;)V
    .registers 2
    .param p1, "inTables"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public whitelist update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 648
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    const-string v1, "No tables defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 649
    const-string v0, "No database defined"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 650
    const-string v0, "No values defined"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 653
    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUpdate(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "unwrappedSql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictColumns()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 656
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictColumns(Landroid/content/ContentValues;)V

    .line 658
    :cond_1e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictGrammar()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 659
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_2d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 675
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 678
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUpdate(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "wrappedSql":Ljava/lang/String;
    nop

    .line 680
    .local v1, "sql":Ljava/lang/String;
    goto :goto_42

    .line 682
    .end local v1    # "sql":Ljava/lang/String;
    :cond_41
    move-object v1, v0

    .line 685
    .restart local v1    # "sql":Ljava/lang/String;
    :goto_42
    if-nez p4, :cond_46

    .line 686
    sget-object p4, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 688
    :cond_46
    invoke-virtual {p2}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v2

    .line 689
    .local v2, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 690
    .local v3, "valuesLength":I
    array-length v4, p4

    add-int/2addr v4, v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 691
    .local v4, "sqlArgs":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_53
    array-length v6, v4

    if-ge v5, v6, :cond_68

    .line 692
    if-ge v5, v3, :cond_5f

    .line 693
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_65

    .line 695
    :cond_5f
    sub-int v6, v5, v3

    aget-object v6, p4, v6

    aput-object v6, v4, v5

    .line 691
    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 698
    .end local v5    # "i":I
    :cond_68
    const/4 v5, 0x3

    const-string v6, "SQLiteQueryBuilder"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 699
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_94

    .line 700
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " with args "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 702
    :cond_94
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_97
    :goto_97
    invoke-static {p1, v1, v4}, Landroid/database/DatabaseUtils;->executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    return v5
.end method
