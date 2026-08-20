.class public Lcom/android/server/people/data/AggregateEventHistoryImpl;
.super Ljava/lang/Object;
.source "AggregateEventHistoryImpl.java"

# interfaces
.implements Lcom/android/server/people/data/EventHistory;


# instance fields
.field public final mEventHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/people/data/EventHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEventHistory(Lcom/android/server/people/data/EventHistory;)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final combineEventLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/Event;

    invoke-virtual {v2}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/data/Event;

    invoke-virtual {v4}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_38

    add-int/lit8 v2, v0, 0x1

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/Event;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_7

    :cond_38
    add-int/lit8 v2, v1, 0x1

    .line 87
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/Event;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_7

    .line 90
    :cond_45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_57

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_68

    .line 92
    :cond_57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_68

    .line 93
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_68
    :goto_68
    return-object p0
.end method

.method public getEventIndex(I)Lcom/android/server/people/data/EventIndex;
    .registers 4

    .line 33
    iget-object p0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventHistory;

    .line 34
    invoke-interface {v0, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    return-object v0

    .line 39
    :cond_1d
    sget-object p0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    return-object p0
.end method

.method public getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/people/data/EventIndex;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/EventHistory;

    .line 47
    invoke-interface {v1, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v1

    if-nez v0, :cond_1b

    move-object v0, v1

    goto :goto_7

    .line 50
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 51
    invoke-static {v0, v1}, Lcom/android/server/people/data/EventIndex;->combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;

    move-result-object v0

    goto :goto_7

    :cond_26
    if-eqz v0, :cond_29

    goto :goto_2b

    .line 54
    :cond_29
    sget-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    :goto_2b
    return-object v0
.end method

.method public queryEvents(Ljava/util/Set;JJ)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/people/data/EventHistory;

    .line 62
    invoke-interface {v3, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_b

    :cond_23
    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 66
    invoke-interface/range {v3 .. v8}, Lcom/android/server/people/data/EventHistory;->queryEvents(Ljava/util/Set;JJ)Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-virtual {p0, v0, v2}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->combineEventLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_2f
    return-object v0
.end method
