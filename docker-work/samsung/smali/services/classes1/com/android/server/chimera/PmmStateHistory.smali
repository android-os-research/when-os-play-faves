.class public Lcom/android/server/chimera/PmmStateHistory;
.super Ljava/lang/Object;
.source "PmmStateHistory.java"


# static fields
.field public static final PMM_STATE_MAX_SIZE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "PmmStateHistory"


# instance fields
.field public mLastUpdatedTimeMillis:J

.field public final mPmmStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/chimera/PmmStateHistory;->mLastUpdatedTimeMillis:J

    .line 20
    iput-object p1, p0, Lcom/android/server/chimera/PmmStateHistory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p0, "NORMAL"

    .line 21
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 8

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7a

    const/4 v1, 0x4

    if-le p1, v1, :cond_8

    goto/16 :goto_7a

    .line 43
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/chimera/PmmStateHistory;->mLastUpdatedTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    const/4 v4, 0x2

    if-eq p1, v0, :cond_29

    if-eq p1, v4, :cond_26

    const/4 v5, 0x3

    if-eq p1, v5, :cond_23

    if-eq p1, v1, :cond_20

    const-string p1, "INVALID"

    goto :goto_2b

    :cond_20
    const-string p1, "CRITICAL"

    goto :goto_2b

    :cond_23
    const-string p1, "HEAVY"

    goto :goto_2b

    :cond_26
    const-string p1, "NORMAL"

    goto :goto_2b

    :cond_29
    const-string p1, "LIGHT"

    .line 63
    :goto_2b
    iget-object v5, p0, Lcom/android/server/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/android/server/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_3e

    .line 65
    iget-object p1, p0, Lcom/android/server/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    :cond_3e
    iget-object p1, p0, Lcom/android/server/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_73

    .line 69
    iget-object p1, p0, Lcom/android/server/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    .line 70
    iget-object v0, p0, Lcom/android/server/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "H)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/chimera/PmmStateHistory;->mLastUpdatedTimeMillis:J

    return-void

    .line 39
    :cond_7a
    :goto_7a
    iget-object p0, p0, Lcom/android/server/chimera/PmmStateHistory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "PmmStateHistory"

    const-string/jumbo v0, "onStateChanged() - out of range"

    invoke-interface {p0, p1, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/android/server/chimera/PmmStateHistory;->mPmmStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 32
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/chimera/PmmStateHistory;->mLastUpdatedTimeMillis:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    const-string p0, "("

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "H)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
