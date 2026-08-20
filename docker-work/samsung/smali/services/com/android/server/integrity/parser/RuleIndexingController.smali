.class public Lcom/android/server/integrity/parser/RuleIndexingController;
.super Ljava/lang/Object;
.source "RuleIndexingController.java"


# static fields
.field public static sAppCertificateBasedIndexes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sPackageNameBasedIndexes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/server/integrity/model/BitInputStream;

    invoke-direct {v0, p1}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;

    move-result-object p1

    sput-object p1, Lcom/android/server/integrity/parser/RuleIndexingController;->sPackageNameBasedIndexes:Ljava/util/LinkedHashMap;

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;

    move-result-object p1

    sput-object p1, Lcom/android/server/integrity/parser/RuleIndexingController;->sAppCertificateBasedIndexes:Ljava/util/LinkedHashMap;

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;

    move-result-object p0

    sput-object p0, Lcom/android/server/integrity/parser/RuleIndexingController;->sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static searchIndexingKeysRangeContainingKey(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/android/server/integrity/parser/RuleIndexRange;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/integrity/parser/RuleIndexRange;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchKeysRangeContainingKey(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    .line 106
    new-instance v0, Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 107
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/integrity/parser/RuleIndexRange;-><init>(II)V

    return-object v0
.end method

.method public static searchKeysRangeContainingKey(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-le p3, p2, :cond_38

    sub-int v0, p3, p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    new-array p1, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 116
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    aput-object p2, p1, v0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, p1, v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 119
    :cond_20
    div-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 120
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_33

    .line 123
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchKeysRangeContainingKey(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 125
    :cond_33
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchKeysRangeContainingKey(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 113
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Indexing file is corrupt."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/model/BitInputStream;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 85
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/integrity/model/BitInputStream;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 86
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getStringValue(Lcom/android/server/integrity/model/BitInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I

    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "END_KEY"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    :cond_22
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2a

    return-object p0

    .line 96
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Indexing file is corrupt."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public identifyRulesToEvaluate(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/integrity/parser/RuleIndexRange;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    sget-object v0, Lcom/android/server/integrity/parser/RuleIndexingController;->sPackageNameBasedIndexes:Ljava/util/LinkedHashMap;

    .line 64
    invoke-virtual {p1}, Landroid/content/integrity/AppInstallMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchIndexingKeysRangeContainingKey(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/android/server/integrity/parser/RuleIndexRange;

    move-result-object v0

    .line 62
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p1}, Landroid/content/integrity/AppInstallMetadata;->getAppCertificates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    sget-object v1, Lcom/android/server/integrity/parser/RuleIndexingController;->sAppCertificateBasedIndexes:Ljava/util/LinkedHashMap;

    .line 69
    invoke-static {v1, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchIndexingKeysRangeContainingKey(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/android/server/integrity/parser/RuleIndexRange;

    move-result-object v0

    .line 68
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 74
    :cond_30
    new-instance p1, Lcom/android/server/integrity/parser/RuleIndexRange;

    sget-object v0, Lcom/android/server/integrity/parser/RuleIndexingController;->sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;

    const-string v1, "START_KEY"

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/server/integrity/parser/RuleIndexingController;->sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;

    const-string v2, "END_KEY"

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/server/integrity/parser/RuleIndexRange;-><init>(II)V

    .line 74
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
