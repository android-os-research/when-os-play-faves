.class public Lcom/android/server/wm/AnimatingActivityRegistry;
.super Ljava/lang/Object;
.source "AnimatingActivityRegistry.java"


# instance fields
.field public mAnimatingActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mEndingDeferredFinish:Z

.field public mFinishedTokens:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mTmpRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 134
    :cond_10
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAnimatingActivities="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mFinishedTokens="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_41
    return-void
.end method

.method public final endDeferringFinished()V
    .registers 6

    .line 95
    iget-boolean v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 99
    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    .line 103
    iget-object v2, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_10
    if-ltz v2, :cond_22

    .line 104
    iget-object v3, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 106
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 107
    iget-object v2, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2e
    if-ltz v2, :cond_3e

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .line 110
    :cond_3e
    iget-object v1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_46

    .line 112
    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    return-void

    :catchall_46
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mEndingDeferredFinish:Z

    .line 113
    throw v1
.end method

.method public findAnimatingActivityByRootTaskId(I)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 123
    iget-object p0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 124
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public isWaitingAboutToFinish(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 118
    iget-object p0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public notifyAboutToFinish(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)Z
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 78
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->endDeferringFinished()V

    return v1

    .line 86
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public notifyFinished(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->endDeferringFinished()V

    :cond_15
    return-void
.end method

.method public notifyStarting(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
