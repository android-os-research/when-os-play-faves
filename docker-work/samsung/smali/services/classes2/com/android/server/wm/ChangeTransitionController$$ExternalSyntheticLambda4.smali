.class public final synthetic Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;->f$0:Z

    iput-object p2, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;->f$0:Z

    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/ActivityRecord;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->$r8$lambda$DvdilJXFbXC3nvez28vwW99LCfc(ZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
