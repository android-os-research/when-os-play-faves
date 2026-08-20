.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ZILjava/util/List;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$0:Z

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$2:Ljava/util/List;

    iput p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$0:Z

    iget v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$2:Ljava/util/List;

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$3:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$8R44cw4CGrxfkrpG_nMJmqs9LtQ(ZILjava/util/List;ILcom/android/server/wm/Task;)V

    return-void
.end method
