.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;->f$1:I

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;->f$0:Ljava/util/List;

    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;->f$1:I

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$ZNFoUiL8KAgGMt6E_9Wtp0PdUtw(Ljava/util/List;IILjava/lang/Long;)V

    return-void
.end method
