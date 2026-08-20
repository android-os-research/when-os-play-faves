.class public final Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunningAnimation"
.end annotation


# instance fields
.field public mAnim:Landroid/animation/ValueAnimator;

.field public final mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

.field public mCancelled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCancelLock"
        }
    .end annotation
.end field

.field public final mFinishCallback:Ljava/lang/Runnable;

.field public final mLeash:Landroid/view/SurfaceControl;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .registers 4

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 661
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    .line 662
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method
