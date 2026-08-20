.class public final synthetic Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskMotionController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskMotionController;

    iput-object p2, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(Landroid/graphics/Rect;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskMotionController;

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/Task;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/TaskMotionController;->$r8$lambda$MUv8otkcgRkOhjkHFD4bWuiCt08(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V

    return-void
.end method
