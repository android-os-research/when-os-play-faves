.class public Lcom/android/server/people/data/EventList;
.super Ljava/lang/Object;
.source "EventList.java"


# instance fields
.field public final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/people/data/Event;)V
    .registers 7

    .line 37
    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/Event;

    invoke-virtual {v1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2b

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/EventList;->isDuplicate(Lcom/android/server/people/data/Event;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    return-void

    .line 43
    :cond_2b
    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/Event;

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public clear()V
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final firstIndexOnOrAfter(J)I
    .registers 9

    .line 128
    iget-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_f
    if-gt v2, v1, :cond_2e

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 133
    iget-object v4, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/data/Event;

    invoke-virtual {v4}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_2a

    add-int/lit8 v0, v3, -0x1

    move v1, v0

    move v0, v3

    goto :goto_f

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_f

    :cond_2e
    return v0
.end method

.method public getAllEvents()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isDuplicate(Lcom/android/server/people/data/Event;I)Z
    .registers 8

    .line 148
    iget-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge p2, v0, :cond_34

    .line 150
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/Event;

    invoke-virtual {v1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_34

    .line 151
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/people/data/Event;

    invoke-virtual {p2}, Lcom/android/server/people/data/Event;->getType()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getType()I

    move-result v1

    if-ne p2, v1, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    move p2, v2

    goto :goto_6

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public queryEvents(Ljava/util/Set;JJ)Ljava/util/List;
    .registers 7
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

    .line 66
    invoke-virtual {p0, p2, p3}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result p2

    .line 67
    iget-object p3, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p2, p3, :cond_12

    .line 68
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 70
    :cond_12
    invoke-virtual {p0, p4, p5}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result p3

    if-ge p3, p2, :cond_1e

    .line 72
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 74
    :cond_1e
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    if-ge p2, p3, :cond_41

    .line 76
    iget-object p5, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/people/data/Event;

    .line 77
    invoke-virtual {p5}, Lcom/android/server/people/data/Event;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 78
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    :cond_41
    return-object p4
.end method

.method public removeOldEvents(J)V
    .registers 6

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 108
    :cond_7
    iget-object p2, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_15

    .line 110
    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-ge p1, p2, :cond_28

    .line 117
    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/Event;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_28
    if-le p2, v0, :cond_33

    .line 122
    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-interface {p0, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_33
    return-void
.end method
