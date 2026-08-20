.class public Lcom/android/server/usage/UserBroadcastEvents;
.super Ljava/lang/Object;
.source "UserBroadcastEvents.java"


# instance fields
.field public mBroadcastEvents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usage/BroadcastEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public clear(I)V
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2f

    .line 60
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 61
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_2c

    .line 62
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/BroadcastEvent;

    invoke-virtual {v3}, Lcom/android/server/usage/BroadcastEvent;->getSourceUid()I

    move-result v3

    if-ne v3, p1, :cond_29

    .line 63
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2f
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 70
    :goto_2
    iget-object v2, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_7b

    .line 71
    iget-object v2, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 75
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "<empty>"

    .line 76
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_75

    :cond_3d
    move v2, v0

    .line 78
    :goto_3e
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_75

    .line 79
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/BroadcastEvent;

    .line 80
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 82
    invoke-virtual {v4}, Lcom/android/server/usage/BroadcastEvent;->getTimestampsMs()Landroid/util/LongArrayQueue;

    move-result-object v4

    move v5, v0

    .line 83
    :goto_55
    invoke-virtual {v4}, Landroid/util/LongArrayQueue;->size()I

    move-result v6

    if-ge v5, v6, :cond_6c

    if-lez v5, :cond_62

    const/16 v6, 0x2c

    .line 85
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 87
    :cond_62
    invoke-virtual {v4, v5}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v6

    .line 88
    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 90
    :cond_6c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 94
    :cond_75
    :goto_75
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7b
    return-void
.end method

.method public getBroadcastEvents(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usage/BroadcastEvent;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    return-object p0
.end method

.method public getOrCreateBroadcastEvents(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usage/BroadcastEvent;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_14

    .line 44
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 45
    iget-object p0, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onUidRemoved(I)V
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserBroadcastEvents;->clear(I)V

    return-void
.end method
