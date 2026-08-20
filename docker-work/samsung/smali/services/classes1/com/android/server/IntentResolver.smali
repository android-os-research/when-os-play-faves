.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "IntentResolver"

.field public static final localLOGV:Z = false

.field public static final localVerificationLOGV:Z = false

.field public static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field public final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field public final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field public final mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TF;>;"
        }
    .end annotation
.end field

.field public final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field public final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field public final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field public final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 888
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 947
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 954
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 963
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 968
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 974
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 979
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method public static filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 6

    .line 81
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 82
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    move v1, v2

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 91
    :cond_1d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 92
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    if-eq v0, v1, :cond_28

    return v2

    :cond_28
    move v1, v2

    :goto_29
    if-ge v1, v0, :cond_39

    .line 97
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    return v2

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 101
    :cond_39
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 102
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-eq v0, v1, :cond_44

    return v2

    :cond_44
    move v1, v2

    :goto_45
    if-ge v1, v0, :cond_55

    .line 107
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    return v2

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 111
    :cond_55
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-eq v0, v1, :cond_60

    return v2

    :cond_60
    move v1, v2

    :goto_61
    if-ge v1, v0, :cond_71

    .line 117
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6e

    return v2

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 121
    :cond_71
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 122
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    if-eq v0, v1, :cond_7c

    return v2

    :cond_7c
    move v1, v2

    :goto_7d
    if-ge v1, v0, :cond_8d

    .line 127
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v3

    if-nez v3, :cond_8a

    return v2

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 131
    :cond_8d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    if-eq v0, v1, :cond_98

    return v2

    :cond_98
    move v1, v2

    :goto_99
    if-ge v1, v0, :cond_a9

    .line 137
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_a6

    return v2

    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 141
    :cond_a9
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 142
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    if-eq v0, v1, :cond_b4

    return v2

    :cond_b4
    move v1, v2

    :goto_b5
    if-ge v1, v0, :cond_c5

    .line 147
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_c2

    return v2

    :cond_c2
    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    :cond_c5
    const/4 p0, 0x1

    return p0
.end method

.method public static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 772
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 776
    :cond_8
    new-instance v0, Landroid/util/FastImmutableArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static intentMatchesFilter(Landroid/content/IntentFilter;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 16

    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    const-string v3, "IntentResolver"

    if-eqz v0, :cond_19

    .line 163
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {v4, v5, v3, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    if-eqz v0, :cond_49

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matching against filter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "  "

    .line 168
    invoke-virtual {p0, v4, v5}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 171
    :cond_49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v11

    const-string v12, "IntentResolver"

    move-object v6, p0

    move-object v8, p2

    .line 171
    invoke-virtual/range {v6 .. v12}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_7e

    if-eqz v0, :cond_7d

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Filter matched!  match=0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v1

    :cond_7e
    if-eqz v0, :cond_b0

    const/4 p1, -0x4

    if-eq p0, p1, :cond_9a

    const/4 p1, -0x3

    if-eq p0, p1, :cond_97

    const/4 p1, -0x2

    if-eq p0, p1, :cond_94

    const/4 p1, -0x1

    if-eq p0, p1, :cond_90

    const-string/jumbo p0, "unknown reason"

    goto :goto_9c

    :cond_90
    const-string/jumbo p0, "type"

    goto :goto_9c

    :cond_94
    const-string p0, "data"

    goto :goto_9c

    :cond_97
    const-string p0, "action"

    goto :goto_9c

    :cond_9a
    const-string p0, "category"

    .line 189
    :goto_9c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Filter did not match: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    return v2
.end method


# virtual methods
.method public final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 627
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 629
    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    .line 630
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    aput-object p3, p0, v2

    goto :goto_35

    .line 633
    :cond_14
    array-length v3, v0

    move v4, v3

    :goto_16
    if-lez v4, :cond_21

    add-int/lit8 v5, v4, -0x1

    .line 635
    aget-object v5, v0, v5

    if-nez v5, :cond_21

    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    :cond_21
    if-ge v4, v3, :cond_26

    .line 639
    aput-object p3, v0, v4

    goto :goto_35

    :cond_26
    mul-int/lit8 v4, v3, 0x3

    .line 641
    div-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    .line 642
    invoke-static {v0, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    aput-object p3, p0, v3

    .line 644
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_35
    return-void
.end method

.method public addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "TF;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    const-string v1, "      Type: "

    .line 69
    invoke-virtual {p0, p2, v1}, Lcom/android/server/IntentResolver;->register_mime_types(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_2a

    if-nez v1, :cond_2a

    .line 71
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_2a
    if-eqz v1, :cond_37

    .line 75
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v1, "      TypedAction: "

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;IJ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v13

    const/4 v0, 0x0

    const-string v14, "IntentResolver"

    if-eqz p4, :cond_2a

    .line 792
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v14, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 793
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    move-object v6, v0

    move-object v15, v1

    goto :goto_2c

    :cond_2a
    move-object v6, v0

    move-object v15, v6

    :goto_2c
    const/16 v16, 0x0

    if-eqz v8, :cond_33

    .line 799
    array-length v0, v8

    move v5, v0

    goto :goto_35

    :cond_33
    move/from16 v5, v16

    :goto_35
    move/from16 v4, v16

    move/from16 v17, v4

    :goto_39
    if-ge v4, v5, :cond_1be

    .line 803
    aget-object v2, v8, v4

    if-eqz v2, :cond_1be

    if-eqz p4, :cond_55

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matching against filter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    move-object/from16 v1, p1

    move/from16 v0, p10

    if-eqz v13, :cond_71

    .line 807
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/server/IntentResolver;->isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z

    move-result v18

    if-eqz v18, :cond_71

    if-eqz p4, :cond_68

    const-string v2, "  Filter\'s target is stopped; skipping"

    .line 809
    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :goto_68
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v20, v10

    move-object v10, v6

    goto/16 :goto_1b3

    :cond_71
    if-eqz v12, :cond_95

    .line 815
    invoke-virtual {v7, v12, v2}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_95

    if-eqz p4, :cond_68

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Filter is not from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; skipping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 823
    :cond_95
    invoke-virtual {v7, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v8

    .line 824
    invoke-virtual {v8}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v18

    if-eqz v18, :cond_e6

    if-eqz p4, :cond_e6

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Filter verified: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Lcom/android/server/IntentResolver;->isFilterVerified(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {v8}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    move/from16 v3, v16

    :goto_bf
    if-ge v3, v0, :cond_e6

    move/from16 v18, v0

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v1

    .line 830
    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v18

    goto :goto_bf

    .line 836
    :cond_e6
    invoke-virtual {v7, v2, v9}, Lcom/android/server/IntentResolver;->allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_f5

    if-eqz p4, :cond_68

    const-string v0, "  Filter\'s target already added"

    .line 838
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    :cond_f5
    const-string v18, "IntentResolver"

    move-object v0, v8

    move-object v1, v10

    move-object v3, v2

    move-object/from16 v2, p6

    move-object/from16 v19, v3

    move-object/from16 v20, v10

    const/4 v10, 0x1

    move-object/from16 v3, p7

    move/from16 v21, v4

    move-object v4, v11

    move/from16 v22, v5

    move-object/from16 v5, p3

    move-object v10, v6

    move-object/from16 v6, v18

    .line 843
    invoke-virtual/range {v0 .. v6}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_181

    const-string v0, "android.intent.category.DEFAULT"

    if-eqz p4, :cond_13b

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Filter matched!  match=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 845
    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13b
    if-eqz p5, :cond_148

    .line 848
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    goto :goto_148

    :cond_144
    const/16 v17, 0x1

    goto/16 :goto_1b3

    :cond_148
    :goto_148
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v4, p10

    move-wide/from16 v5, p11

    .line 849
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz p4, :cond_16c

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Created result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16c
    if-eqz v0, :cond_1b3

    .line 852
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_1b3

    const-string v0, "    "

    move-object/from16 v1, v19

    .line 854
    invoke-virtual {v7, v15, v0, v1}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    invoke-virtual {v15}, Ljava/io/PrintWriter;->flush()V

    .line 856
    invoke-virtual {v8, v10, v0}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1b3

    :cond_181
    if-eqz p4, :cond_1b3

    const/4 v0, -0x4

    if-eq v3, v0, :cond_19d

    const/4 v0, -0x3

    if-eq v3, v0, :cond_19a

    const/4 v0, -0x2

    if-eq v3, v0, :cond_197

    const/4 v0, -0x1

    if-eq v3, v0, :cond_193

    const-string/jumbo v0, "unknown reason"

    goto :goto_19f

    :cond_193
    const-string/jumbo v0, "type"

    goto :goto_19f

    :cond_197
    const-string v0, "data"

    goto :goto_19f

    :cond_19a
    const-string v0, "action"

    goto :goto_19f

    :cond_19d
    const-string v0, "category"

    .line 872
    :goto_19f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Filter did not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b3
    :goto_1b3
    add-int/lit8 v4, v21, 0x1

    move-object/from16 v8, p8

    move-object v6, v10

    move-object/from16 v10, v20

    move/from16 v5, v22

    goto/16 :goto_39

    :cond_1be
    if-eqz p4, :cond_1dc

    if-eqz v17, :cond_1dc

    .line 878
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1cf

    const-string/jumbo v0, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    .line 879
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1dc

    .line 880
    :cond_1cf
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1dc

    const-string/jumbo v0, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    .line 881
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1dc
    :goto_1dc
    return-void
.end method

.method public final collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    const/4 v1, 0x0

    .line 198
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 199
    aget-object v2, p1, v1

    if-nez v2, :cond_c

    goto :goto_23

    .line 203
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_20

    if-nez v0, :cond_1d

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :cond_1d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_23
    :goto_23
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/IntentResolver;)V
    .registers 4

    .line 929
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 930
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 931
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 932
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 933
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 934
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 935
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;)V"
        }
    .end annotation

    .line 903
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 904
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 905
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_34

    .line 907
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 908
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 909
    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move v5, v1

    .line 910
    :goto_20
    array-length v6, v3

    if-ge v5, v6, :cond_2e

    .line 911
    aget-object v6, v3, v5

    invoke-virtual {p0, v6}, Lcom/android/server/IntentResolver;->snapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 913
    :cond_2e
    invoke-virtual {p1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_34
    return-void
.end method

.method public copyInto(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TF;>;",
            "Landroid/util/ArraySet<",
            "TF;>;)V"
        }
    .end annotation

    .line 918
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 919
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 920
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 922
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->snapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 20

    move-object v9, p0

    move-object/from16 v0, p3

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 361
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Full MIME Types:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_4d

    move-object v12, v11

    .line 365
    :cond_4d
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Base MIME Types:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_62

    move-object v12, v11

    .line 369
    :cond_62
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Wild MIME Types:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_77

    move-object v12, v11

    .line 373
    :cond_77
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Schemes:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_8c

    move-object v12, v11

    .line 377
    :cond_8c
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "Non-Data Actions:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_a1

    move-object v12, v11

    .line 381
    :cond_a1
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "MIME Typed Actions:"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_b6

    move-object v12, v11

    :cond_b6
    if-ne v12, v11, :cond_ba

    const/4 v0, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v0, 0x0

    :goto_bb
    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 346
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 347
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000001L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000002L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000003L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000004L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 351
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000005L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-wide v1, 0x20b00000006L

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 353
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 615
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 623
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 269
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v10, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 273
    :goto_36
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v11, v14, :cond_140

    .line 274
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    .line 275
    array-length v15, v14

    const-string v8, ":"

    if-eqz p8, :cond_d3

    if-nez p7, :cond_d3

    .line 279
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    const/4 v9, 0x0

    :goto_4d
    move-object/from16 v16, v10

    if-ge v9, v15, :cond_92

    .line 280
    aget-object v10, v14, v9

    if-eqz v10, :cond_92

    if-eqz v4, :cond_63

    .line 281
    invoke-virtual {v0, v4, v10}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_63

    move/from16 v18, v12

    move-object/from16 v17, v13

    const/4 v12, 0x1

    goto :goto_89

    .line 284
    :cond_63
    invoke-virtual {v0, v10}, Lcom/android/server/IntentResolver;->filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v13

    .line 285
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_7b

    .line 287
    new-instance v13, Landroid/util/MutableInt;

    move/from16 v18, v12

    const/4 v12, 0x1

    invoke-direct {v13, v12}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v7, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :cond_7b
    move/from16 v18, v12

    const/4 v12, 0x1

    .line 289
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/MutableInt;

    iget v13, v10, Landroid/util/MutableInt;->value:I

    add-int/2addr v13, v12

    iput v13, v10, Landroid/util/MutableInt;->value:I

    :goto_89
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v16

    move-object/from16 v13, v17

    move/from16 v12, v18

    goto :goto_4d

    :cond_92
    move/from16 v18, v12

    move-object/from16 v17, v13

    const/4 v12, 0x1

    move-object/from16 v10, v16

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 292
    :goto_9b
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v9, v14, :cond_d0

    if-eqz v10, :cond_aa

    .line 294
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_aa
    if-nez v13, :cond_bc

    .line 298
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v13, v12

    .line 302
    :cond_bc
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/MutableInt;

    iget v15, v15, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v18, v12

    goto :goto_9b

    :cond_d0
    move-object/from16 v13, v17

    goto :goto_138

    :cond_d3
    move-object/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v17, v13

    const/4 v12, 0x1

    move-object/from16 v10, v16

    move-object/from16 v13, v17

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_e1
    if-ge v9, v15, :cond_138

    .line 305
    aget-object v12, v14, v9

    if-eqz v12, :cond_138

    if-eqz v4, :cond_f0

    .line 306
    invoke-virtual {v0, v4, v12}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f0

    goto :goto_132

    :cond_f0
    if-eqz v10, :cond_f9

    .line 310
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_f9
    if-nez v16, :cond_10e

    .line 314
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 318
    :cond_10e
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p7, :cond_130

    if-nez v13, :cond_11a

    .line 321
    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 323
    :cond_11a
    invoke-virtual {v0, v12}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v13, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_130
    const/16 v18, 0x1

    :goto_132
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p5

    const/4 v12, 0x1

    goto :goto_e1

    :cond_138
    :goto_138
    move/from16 v12, v18

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p5

    goto/16 :goto_36

    :cond_140
    move/from16 v18, v12

    return v18
.end method

.method public filterIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 417
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 424
    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p0, "IntentFilter"

    return-object p0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 217
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 218
    :cond_19
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 220
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 221
    :cond_36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_59

    .line 222
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 224
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_59
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_60
    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_60

    if-nez v0, :cond_7b

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    :cond_7b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_7f
    return-object v0
.end method

.method public abstract getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation
.end method

.method public isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "TF;I)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isFilterVerified(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/IntentFilter;->isVerified()Z

    move-result p0

    return p0
.end method

.method public abstract isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method public abstract newArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method public newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "TF;IIJ)TR;"
        }
    .end annotation

    return-object p2
.end method

.method public queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 449
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZIJ)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 456
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_1a

    move/from16 v16, v1

    goto :goto_1c

    :cond_1a
    move/from16 v16, v12

    :goto_1c
    const-string v10, "IntentResolver"

    if-eqz v16, :cond_5b

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " defaultOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_5b
    move-object/from16 v7, p2

    move/from16 v9, p4

    move/from16 v8, p5

    :goto_61
    if-eqz v14, :cond_163

    const/16 v2, 0x2f

    .line 473
    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_163

    .line 475
    invoke-virtual {v14, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_135

    .line 477
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v2, 0x2

    const-string v0, "Second type cut: "

    const-string v12, "First type cut: "

    if-ne v5, v6, :cond_ce

    add-int/2addr v2, v1

    .line 478
    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_8d

    goto :goto_ce

    .line 488
    :cond_8d
    iget-object v1, v13, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-eqz v16, :cond_ad

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_ad
    iget-object v2, v13, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-eqz v16, :cond_10e

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10e

    .line 481
    :cond_ce
    :goto_ce
    iget-object v1, v13, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-eqz v16, :cond_ee

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_ee
    iget-object v2, v13, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-eqz v16, :cond_10e

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_10e
    :goto_10e
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v16, :cond_130

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Third type cut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_130
    move-object/from16 v20, v0

    move-object/from16 v19, v2

    goto :goto_168

    .line 498
    :cond_135
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_163

    .line 502
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    if-eqz v16, :cond_164

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Typed Action list: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_164

    :cond_163
    const/4 v1, 0x0

    :cond_164
    :goto_164
    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_168
    if-eqz v15, :cond_18f

    .line 512
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v16, :cond_18c

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheme list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18c
    move-object/from16 v17, v0

    goto :goto_191

    :cond_18f
    const/16 v17, 0x0

    :goto_191
    if-nez v14, :cond_1c3

    if-nez v15, :cond_1c3

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c3

    .line 520
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v16, :cond_1c1

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c1
    move-object v12, v0

    goto :goto_1c4

    :cond_1c3
    move-object v12, v1

    .line 524
    :goto_1c4
    invoke-static/range {p2 .. p2}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v21

    .line 525
    move-object/from16 v22, p1

    check-cast v22, Lcom/android/server/pm/Computer;

    if-eqz v12, :cond_1ed

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object v7, v15

    move-object v8, v12

    move-object v9, v11

    move-object v12, v10

    move/from16 v10, p5

    move-object/from16 p1, v11

    move-object v14, v12

    const/16 v18, 0x0

    move-wide/from16 v11, p6

    .line 527
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    goto :goto_1f2

    :cond_1ed
    move-object v14, v10

    move-object/from16 p1, v11

    const/16 v18, 0x0

    :goto_1f2
    if-eqz v19, :cond_20e

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object v7, v15

    move-object/from16 v8, v19

    move-object/from16 v9, p1

    move/from16 v10, p5

    move-wide/from16 v11, p6

    .line 531
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    :cond_20e
    if-eqz v20, :cond_22a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object v7, v15

    move-object/from16 v8, v20

    move-object/from16 v9, p1

    move/from16 v10, p5

    move-wide/from16 v11, p6

    .line 535
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    :cond_22a
    if-eqz v17, :cond_246

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object v7, v15

    move-object/from16 v8, v17

    move-object/from16 v9, p1

    move/from16 v10, p5

    move-wide/from16 v11, p6

    .line 539
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    :cond_246
    move-object/from16 v0, p1

    .line 542
    invoke-virtual {v13, v0}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 543
    invoke-virtual {v13, v0}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    if-eqz v16, :cond_278

    const-string v1, "Final result list:"

    .line 546
    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v12, v18

    .line 547
    :goto_257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_278

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_257

    :cond_278
    return-object v0
.end method

.method public queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;IJ)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v13, p0

    .line 430
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    move v15, v0

    goto :goto_14

    :cond_13
    move v15, v1

    .line 435
    :goto_14
    invoke-static/range {p2 .. p2}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v16

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 437
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v1

    :goto_21
    if-ge v12, v11, :cond_4c

    move-object/from16 v10, p5

    .line 440
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move v4, v15

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, v17

    move-object v9, v14

    move/from16 v10, p6

    move/from16 v18, v11

    move/from16 v19, v12

    move-wide/from16 v11, p7

    .line 439
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    add-int/lit8 v12, v19, 0x1

    move/from16 v11, v18

    goto :goto_21

    .line 442
    :cond_4c
    invoke-virtual {v13, v14}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 443
    invoke-virtual {v13, v14}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    return-object v14
.end method

.method public final register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_4

    return p4

    .line 717
    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 718
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 721
    invoke-virtual {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_16
    return p4
.end method

.method public final register_mime_types(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 650
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_c

    return v0

    :cond_c
    move v1, v0

    .line 656
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 657
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 661
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2c

    .line 663
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 665
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 668
    :goto_40
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v3, :cond_4d

    .line 671
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 673
    :cond_4d
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_53
    return v1
.end method

.method public removeFilter(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 241
    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFilterInternal(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Scheme: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v1

    const-string v2, "      Type: "

    .line 254
    invoke-virtual {p0, p1, v2}, Lcom/android/server/IntentResolver;->unregister_mime_types(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    if-nez v1, :cond_25

    if-nez v2, :cond_25

    .line 256
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_25
    if-eqz v2, :cond_32

    .line 260
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method public final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 744
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_50

    .line 746
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_14

    .line 747
    aget-object v2, v0, v1

    if-nez v2, :cond_14

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_14
    move v2, v1

    :goto_15
    if-ltz v1, :cond_36

    .line 751
    aget-object v3, v0, v1

    if-eqz v3, :cond_33

    .line 752
    invoke-virtual {p0, v3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v4

    if-ne v3, v4, :cond_33

    sub-int v3, v2, v1

    if-lez v3, :cond_2e

    add-int/lit8 v4, v1, 0x1

    .line 755
    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2e
    const/4 v3, 0x0

    .line 757
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, -0x1

    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_36
    if-gez v2, :cond_3c

    .line 762
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 763
    :cond_3c
    array-length p3, v0

    div-int/lit8 p3, p3, 0x2

    if-ge v2, p3, :cond_50

    add-int/lit8 p3, v2, 0x2

    .line 764
    invoke-virtual {p0, p3}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    const/4 p3, 0x0

    .line 765
    invoke-static {v0, p3, p0, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    :goto_50
    return-void
.end method

.method public snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TF;"
        }
    .end annotation

    return-object p1
.end method

.method public sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 605
    sget-object p0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_4

    return p4

    .line 733
    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 734
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 737
    invoke-virtual {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_16
    return p4
.end method

.method public final unregister_mime_types(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 681
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_c

    return v0

    :cond_c
    move v1, v0

    .line 687
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 688
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 692
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2c

    .line 694
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 696
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 699
    :goto_40
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v3, :cond_4d

    .line 702
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 704
    :cond_4d
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_53
    return v1
.end method

.method public writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;)V"
        }
    .end annotation

    .line 332
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_3d

    .line 334
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000001L

    .line 335
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 336
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    move v6, v0

    :goto_22
    if-ge v6, v5, :cond_37

    aget-object v7, v4, v6

    if-eqz v7, :cond_34

    const-wide v8, 0x20900000002L

    .line 338
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 341
    :cond_37
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3d
    return-void
.end method
