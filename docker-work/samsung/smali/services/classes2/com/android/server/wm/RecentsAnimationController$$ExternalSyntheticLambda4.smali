.class public final synthetic Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimationController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimationController;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iput p2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->$r8$lambda$1LpEU3bh1EPOjM0YZ9GuJ4IEjE0(Lcom/android/server/wm/RecentsAnimationController;I)V

    return-void
.end method
