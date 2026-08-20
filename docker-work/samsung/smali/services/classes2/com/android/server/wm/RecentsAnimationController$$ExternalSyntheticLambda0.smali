.class public final synthetic Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/util/SparseBooleanArray;

.field public final synthetic f$3:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimationController;ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iput p2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$2:Landroid/util/SparseBooleanArray;

    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$2:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->$r8$lambda$Ca6noyq_3ahEzwz04QNz67dceio(Lcom/android/server/wm/RecentsAnimationController;ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/Task;)V

    return-void
.end method
