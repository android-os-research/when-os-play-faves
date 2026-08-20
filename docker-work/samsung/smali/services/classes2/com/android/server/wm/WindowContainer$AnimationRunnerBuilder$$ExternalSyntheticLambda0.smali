.class public final synthetic Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->$r8$lambda$L86DUsucxd2PjIvRYXz9DPH-J0s(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
