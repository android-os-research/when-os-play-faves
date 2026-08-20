.class public final Lcom/android/server/textclassifier/FixedSizeQueue;
.super Ljava/lang/Object;
.source "FixedSizeQueue.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mDelegate:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final mMaxSize:I

.field public final mOnEntryEvictedListener:Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "maxSize (%s) must > 0"

    invoke-static {v2, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    .line 49
    iput p1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mMaxSize:I

    .line 50
    iput-object p2, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mOnEntryEvictedListener:Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/textclassifier/FixedSizeQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mMaxSize:I

    if-ne v0, v1, :cond_18

    .line 62
    iget-object v0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mOnEntryEvictedListener:Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;

    if-eqz v1, :cond_18

    .line 64
    invoke-interface {v1, v0}, Lcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;->onEntryEvicted(Ljava/lang/Object;)V

    .line 67
    :cond_18
    iget-object p0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public poll()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    return p0
.end method
