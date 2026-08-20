.class public Lorg/apache/commons/lang3/exception/DefaultExceptionContext;
.super Ljava/lang/Object;
.source "DefaultExceptionContext.java"

# interfaces
.implements Lorg/apache/commons/lang3/exception/ExceptionContext;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final contextValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3XWeI3UuVde9b8l4SQ3B2qmypDc(Ljava/lang/String;Lorg/apache/commons/lang3/tuple/Pair;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->lambda$setContextValue$0(Ljava/lang/String;Lorg/apache/commons/lang3/tuple/Pair;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    return-void
.end method

.method private static synthetic lambda$setContextValue$0(Ljava/lang/String;Lorg/apache/commons/lang3/tuple/Pair;)Z
    .registers 2

    .line 62
    invoke-virtual {p1}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;
    .registers 5

    .line 53
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;
    .registers 3

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    move-result-object p0

    return-object p0
.end method

.method public getContextEntries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/tuple/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    return-object p0
.end method

.method public getContextLabels()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    iget-object p0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/tuple/Pair;

    .line 101
    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object p0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/tuple/Pair;

    .line 74
    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 75
    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2b
    return-object v0
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 86
    iget-object p0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/tuple/Pair;

    .line 87
    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    invoke-virtual {v0}, Lorg/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p1, :cond_c

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_c
    iget-object p1, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_89

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1f

    const/16 p1, 0xa

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1f
    const-string p1, "Exception Context:\n"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 134
    iget-object p0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/tuple/Pair;

    const-string v2, "\t["

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_60

    const-string v1, "null"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 146
    :cond_60
    :try_start_60
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_64} :catch_65

    goto :goto_7b

    :catch_65
    move-exception v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown on toString(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7e
    const-string v1, "]\n"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_84
    const-string p0, "---------------------------------"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;
    .registers 5

    .line 62
    iget-object v0, p0, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/lang3/exception/DefaultExceptionContext$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/ExceptionContext;
    .registers 3

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/exception/DefaultExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/exception/DefaultExceptionContext;

    move-result-object p0

    return-object p0
.end method
