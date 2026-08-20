.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;->f$0:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->$r8$lambda$SdFTZX1OSgxZ2OWVFR9WT7q4mTQ(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
