.class public abstract Lcom/android/server/am/BaseAppStateDurations;
.super Lcom/android/server/am/BaseAppStateTimeEvents;
.source "BaseAppStateDurations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;",
        ">",
        "Lcom/android/server/am/BaseAppStateTimeEvents<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final DEBUG_BASE_APP_STATE_DURATIONS:Z = false


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .registers 6

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BaseAppStateTimeEvents;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BaseAppStateDurations;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateTimeEvents;-><init>(Lcom/android/server/am/BaseAppStateTimeEvents;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 22
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

    if-eqz p2, :cond_d0

    .line 103
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_d0

    :cond_a
    if-eqz p1, :cond_c9

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_c9

    .line 109
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 112
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 114
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v7

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_38
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v14, v5, v12

    if-nez v14, :cond_47

    cmp-long v14, v7, v12

    if-eqz v14, :cond_46

    goto :goto_47

    :cond_46
    return-object v4

    :cond_47
    :goto_47
    const/4 v14, 0x1

    if-nez v10, :cond_4f

    if-eqz v11, :cond_4d

    goto :goto_4f

    :cond_4d
    move v15, v9

    goto :goto_50

    :cond_4f
    :goto_4f
    move v15, v14

    :goto_50
    cmp-long v16, v5, v7

    if-nez v16, :cond_7c

    xor-int/lit8 v10, v10, 0x1

    xor-int/lit8 v11, v11, 0x1

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v6

    goto :goto_6b

    :cond_69
    move-object v5, v2

    move-wide v6, v12

    .line 123
    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v12

    goto :goto_b3

    :cond_7c
    if-gez v16, :cond_98

    xor-int/lit8 v10, v10, 0x1

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v12

    goto :goto_92

    :cond_91
    move-object v5, v2

    :goto_92
    move-wide/from16 v17, v7

    move-wide v6, v12

    move-wide/from16 v12, v17

    goto :goto_b3

    :cond_98
    xor-int/lit8 v11, v11, 0x1

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v7}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v12

    goto :goto_ac

    :cond_ab
    move-object v7, v3

    :goto_ac
    move-wide/from16 v17, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v7

    move-wide/from16 v6, v17

    :cond_b3
    :goto_b3
    if-nez v10, :cond_b9

    if-eqz v11, :cond_b8

    goto :goto_b9

    :cond_b8
    move v14, v9

    :cond_b9
    :goto_b9
    if-eq v15, v14, :cond_c4

    .line 134
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_c4
    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v12

    goto/16 :goto_38

    .line 107
    :cond_c9
    :goto_c9
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0

    :cond_d0
    :goto_d0
    return-object p1
.end method

.method public addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;I)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v1, v0, p3

    if-nez v1, :cond_d

    .line 51
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p3

    .line 53
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v0, v0, p3

    .line 54
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 55
    invoke-virtual {p0, p3}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v1

    if-eq p1, v1, :cond_1d

    .line 63
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1d
    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BaseAppStateDurations;->trimEvents(JI)V

    return-void
.end method

.method public formatEventSummary(JI)Ljava/lang/String;
    .registers 4

    .line 246
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurations(JI)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalDurations(JI)J
    .registers 12

    const-wide/16 v0, 0x0

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v3

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurationsSince(JJI)J
    .registers 22

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    .line 219
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v2, p5

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_5b

    .line 220
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_13

    goto :goto_5b

    .line 226
    :cond_13
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    move-wide v7, v3

    move-wide v9, v7

    move v11, v6

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 227
    invoke-virtual {v12}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v13

    cmp-long v13, v13, v0

    if-ltz v13, :cond_41

    if-eqz v11, :cond_32

    goto :goto_41

    .line 230
    :cond_32
    invoke-virtual {v12}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v12

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    add-long/2addr v7, v12

    goto :goto_45

    .line 228
    :cond_41
    :goto_41
    invoke-virtual {v12}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v9

    :goto_45
    xor-int/lit8 v11, v11, 0x1

    goto :goto_1b

    .line 234
    :cond_48
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_5a

    .line 235
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long v0, p3, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v7, v0

    :cond_5a
    return-wide v7

    :cond_5b
    :goto_5b
    return-wide v3
.end method

.method public isActive(I)Z
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object p0, p0, p1

    const/4 p1, 0x1

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public subtract(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 22
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

    if-eqz p2, :cond_c6

    .line 179
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_c6

    if-eqz p1, :cond_c6

    .line 180
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_c6

    .line 183
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 186
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 188
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v7

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_36
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v14, v5, v12

    if-nez v14, :cond_45

    cmp-long v14, v7, v12

    if-eqz v14, :cond_44

    goto :goto_45

    :cond_44
    return-object v4

    :cond_45
    :goto_45
    const/4 v14, 0x1

    if-eqz v10, :cond_4c

    if-nez v11, :cond_4c

    move v15, v14

    goto :goto_4d

    :cond_4c
    move v15, v9

    :goto_4d
    cmp-long v16, v5, v7

    if-nez v16, :cond_79

    xor-int/lit8 v10, v10, 0x1

    xor-int/lit8 v11, v11, 0x1

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v6

    goto :goto_68

    :cond_66
    move-object v5, v2

    move-wide v6, v12

    .line 197
    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v12

    goto :goto_b0

    :cond_79
    if-gez v16, :cond_95

    xor-int/lit8 v10, v10, 0x1

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v12

    goto :goto_8f

    :cond_8e
    move-object v5, v2

    :goto_8f
    move-wide/from16 v17, v7

    move-wide v6, v12

    move-wide/from16 v12, v17

    goto :goto_b0

    :cond_95
    xor-int/lit8 v11, v11, 0x1

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v7}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v12

    goto :goto_a9

    :cond_a8
    move-object v7, v3

    :goto_a9
    move-wide/from16 v17, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v7

    move-wide/from16 v6, v17

    :cond_b0
    :goto_b0
    if-eqz v10, :cond_b5

    if-nez v11, :cond_b5

    goto :goto_b6

    :cond_b5
    move v14, v9

    :goto_b6
    if-eq v15, v14, :cond_c1

    .line 208
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_c1
    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v12

    goto/16 :goto_36

    :cond_c6
    :goto_c6
    return-object p1
.end method

.method public subtract(Lcom/android/server/am/BaseAppStateDurations;I)V
    .registers 7

    .line 160
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v1, v0

    if-le v1, p2, :cond_21

    aget-object v0, v0, p2

    if-nez v0, :cond_a

    goto :goto_21

    :cond_a
    const/4 v0, 0x0

    .line 168
    :goto_b
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v2, v1

    if-ge v0, v2, :cond_21

    .line 169
    aget-object v2, v1, v0

    if-eqz v2, :cond_1e

    .line 170
    iget-object v3, p1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v3, v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    :goto_21
    return-void
.end method

.method public subtract(Lcom/android/server/am/BaseAppStateDurations;II)V
    .registers 7

    .line 144
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v1, v0

    if-le v1, p2, :cond_19

    aget-object v1, v0, p2

    if-eqz v1, :cond_19

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v2, p1

    if-le v2, p3, :cond_19

    aget-object p1, p1, p3

    if-nez p1, :cond_13

    goto :goto_19

    .line 153
    :cond_13
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p0

    aput-object p0, v0, p2

    :cond_19
    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isActive[0]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " totalDurations[0]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurations(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trimEvents(JI)V
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object p3, v0, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BaseAppStateDurations;->trimEvents(JLjava/util/LinkedList;)V

    return-void
.end method

.method public trimEvents(JLjava/util/LinkedList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/LinkedList<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    .line 77
    :cond_3
    :goto_3
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p0, v1, :cond_39

    .line 78
    invoke-virtual {p3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v2

    cmp-long p0, v2, p1

    if-ltz p0, :cond_1a

    return-void

    .line 83
    :cond_1a
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v1

    cmp-long p0, v1, p1

    if-lez p0, :cond_32

    .line 85
    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->trimTo(J)V

    return-void

    .line 89
    :cond_32
    invoke-virtual {p3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 90
    invoke-virtual {p3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_3

    .line 92
    :cond_39
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-ne p0, v1, :cond_56

    .line 94
    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {p3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->trimTo(J)V

    :cond_56
    return-void
.end method
