.class public Lcom/android/server/am/BaseAppStateTimeEvents;
.super Lcom/android/server/am/BaseAppStateEvents;
.source "BaseAppStateTimeEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;",
        ">",
        "Lcom/android/server/am/BaseAppStateEvents<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .registers 6

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BaseAppStateTimeEvents;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateEvents;-><init>(Lcom/android/server/am/BaseAppStateEvents;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TT;>;",
            "Ljava/util/LinkedList<",
            "TT;>;)",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_b5

    .line 42
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_b5

    :cond_a
    if-eqz p1, :cond_ae

    .line 45
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_ae

    .line 48
    :cond_14
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 49
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 51
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 52
    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v4

    :goto_35
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v2, v6

    if-nez v8, :cond_44

    cmp-long v8, v4, v6

    if-eqz v8, :cond_43

    goto :goto_44

    :cond_43
    return-object v1

    :cond_44
    :goto_44
    cmp-long v8, v2, v4

    if-nez v8, :cond_76

    .line 55
    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v2

    goto :goto_63

    :cond_62
    move-wide v2, v6

    .line 57
    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v4

    goto :goto_35

    :cond_74
    move-wide v4, v6

    goto :goto_35

    :cond_76
    if-gez v8, :cond_94

    .line 59
    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v2

    goto :goto_35

    :cond_92
    move-wide v2, v6

    goto :goto_35

    .line 62
    :cond_94
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v4

    goto :goto_35

    .line 46
    :cond_ae
    :goto_ae
    invoke-virtual {p2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    return-object p0

    :cond_b5
    :goto_b5
    return-object p1
.end method

.method public getTotalEventsSince(JJI)I
    .registers 6

    .line 71
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object p0, p0, p5

    const/4 p3, 0x0

    if-eqz p0, :cond_29

    .line 72
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p4

    if-nez p4, :cond_e

    goto :goto_29

    .line 76
    :cond_e
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 77
    invoke-virtual {p4}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide p4

    cmp-long p4, p4, p1

    if-ltz p4, :cond_12

    add-int/lit8 p3, p3, 0x1

    goto :goto_12

    :cond_29
    :goto_29
    return p3
.end method

.method public trimEvents(JI)V
    .registers 6

    .line 86
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object p0, p0, p3

    if-nez p0, :cond_7

    return-void

    .line 90
    :cond_7
    :goto_7
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p3

    if-lez p3, :cond_20

    .line 91
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 92
    invoke-virtual {p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-ltz p3, :cond_1c

    return-void

    .line 95
    :cond_1c
    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_7

    :cond_20
    return-void
.end method
