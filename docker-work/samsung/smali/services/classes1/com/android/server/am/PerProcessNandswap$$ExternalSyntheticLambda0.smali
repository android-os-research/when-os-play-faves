.class public final synthetic Lcom/android/server/am/PerProcessNandswap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[J

.field public final synthetic f$2:[Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[J[Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/am/PerProcessNandswap$$ExternalSyntheticLambda0;->f$1:[J

    iput-object p3, p0, Lcom/android/server/am/PerProcessNandswap$$ExternalSyntheticLambda0;->f$2:[Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$$ExternalSyntheticLambda0;->f$1:[J

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$$ExternalSyntheticLambda0;->f$2:[Ljava/util/ArrayList;

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/am/PerProcessNandswap;->$r8$lambda$cT5iEXoC0CfZz-gjYckfRHcN6fc(Landroid/util/SparseArray;[J[Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    return-void
.end method
