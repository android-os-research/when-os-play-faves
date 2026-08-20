.class public Lorg/apache/commons/lang3/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;
    }
.end annotation


# static fields
.field public static final ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 272
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;-><init>(Lorg/apache/commons/lang3/ThreadUtils$1;)V

    sput-object v0, Lorg/apache/commons/lang3/ThreadUtils;->ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findThreadById(J)Ljava/lang/Thread;
    .registers 3

    .line 222
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;-><init>(J)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p0

    .line 223
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p0, 0x0

    goto :goto_1b

    :cond_11
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Thread;

    :goto_1b
    return-object p0
.end method

.method public static findThreadById(JLjava/lang/String;)Ljava/lang/Thread;
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The thread group name must not be null"

    .line 76
    invoke-static {p2, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadById(J)Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 78
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findThreadById(JLjava/lang/ThreadGroup;)Ljava/lang/Thread;
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The thread group must not be null"

    .line 53
    invoke-static {p2, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadById(J)Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 55
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findThreadGroups(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            "Z",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The group must not be null"

    .line 425
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The predicate must not be null"

    .line 426
    invoke-static {p2, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v1

    .line 431
    :goto_13
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/ThreadGroup;

    .line 432
    invoke-virtual {p0, v2, p1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;Z)I

    move-result v3

    if-ge v3, v1, :cond_3c

    .line 436
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_25
    if-ge v0, v3, :cond_37

    .line 438
    aget-object p1, v2, v0

    invoke-interface {p2, p1}, Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;->test(Ljava/lang/ThreadGroup;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 439
    aget-object p1, v2, v0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 442
    :cond_37
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_3c
    move v1, v3

    goto :goto_13
.end method

.method public static findThreadGroups(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->getSystemThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static findThreadGroupsByName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            "Z",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The group must not be null"

    .line 393
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The predicate must not be null"

    .line 394
    invoke-static {p2, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    .line 399
    :goto_13
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/Thread;

    .line 400
    invoke-virtual {p0, v2, p1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v3

    if-ge v3, v1, :cond_3c

    .line 404
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_25
    if-ge v0, v3, :cond_37

    .line 406
    aget-object p1, v2, v0

    invoke-interface {p2, p1}, Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;->test(Ljava/lang/Thread;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 407
    aget-object p1, v2, v0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 410
    :cond_37
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_3c
    move v1, v3

    goto :goto_13
.end method

.method public static findThreads(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->getSystemThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static findThreadsByName(Ljava/lang/String;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static findThreadsByName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The thread name must not be null"

    .line 117
    invoke-static {p0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The thread group name must not be null"

    .line 118
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v1, p1}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 126
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v2, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v2, p0}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ThreadGroup;

    .line 129
    invoke-static {p1, v0, v2}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_31

    .line 131
    :cond_45
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static findThreadsByName(Ljava/lang/String;Ljava/lang/ThreadGroup;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadGroup;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, p0, v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static getAllThreadGroups()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 161
    sget-object v0, Lorg/apache/commons/lang3/ThreadUtils;->ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getAllThreads()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 190
    sget-object v0, Lorg/apache/commons/lang3/ThreadUtils;->ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemThreadGroup()Ljava/lang/ThreadGroup;
    .registers 2

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 173
    :goto_8
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 174
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_8

    :cond_13
    return-object v0
.end method
