.class public Lcom/android/server/wm/utils/RotationCache;
.super Ljava/lang/Object;
.source "RotationCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TR;>;"
        }
    .end annotation
.end field

.field public mCachedFor:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mComputation:Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    .line 38
    iput-object p1, p0, Lcom/android/server/wm/utils/RotationCache;->mComputation:Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;

    return-void
.end method


# virtual methods
.method public getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TR;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCachedFor:Ljava/lang/Object;

    if-eq p1, v0, :cond_b

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/utils/RotationCache;->mCachedFor:Ljava/lang/Object;

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1a

    .line 55
    iget-object p0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 57
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mComputation:Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;->compute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 58
    iget-object p0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method
