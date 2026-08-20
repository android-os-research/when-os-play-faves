.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;ZLcom/android/server/wm/DisplayContent;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput-boolean p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$2:Lcom/android/server/wm/DisplayContent;

    iput p4, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$3:I

    iput p5, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-boolean v1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$2:Lcom/android/server/wm/DisplayContent;

    iget v3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$3:I

    iget v4, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;->f$4:I

    move-object v5, p1

    check-cast v5, Lcom/android/server/wm/Task;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$trx_a1rh1Akzo_GemsBG4_7mm88(Lcom/android/server/wm/MultiTaskingController;ZLcom/android/server/wm/DisplayContent;IILcom/android/server/wm/Task;)V

    return-void
.end method
