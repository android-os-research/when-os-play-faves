.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;->f$0:Landroid/util/SparseArray;

    check-cast p2, [J

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$V8NkJ_eev1lXgc6QFr6c3nQd480(Landroid/util/SparseArray;I[J)V

    return-void
.end method
