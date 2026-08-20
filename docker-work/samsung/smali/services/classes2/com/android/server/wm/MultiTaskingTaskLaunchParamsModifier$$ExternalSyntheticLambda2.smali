.class public final synthetic Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;

    iput p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;

    iget v1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->$r8$lambda$dgq-BO3ziWIsKDPDvxkbQPwDhqU(Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;IILcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method
