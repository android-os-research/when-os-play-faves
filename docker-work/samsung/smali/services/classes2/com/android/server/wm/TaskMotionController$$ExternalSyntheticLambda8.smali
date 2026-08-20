.class public final synthetic Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskMotionController;

.field public final synthetic f$1:Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/TaskMotionController;

    iput-object p2, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    iput-object p3, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda8;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(Landroid/graphics/Rect;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/TaskMotionController;

    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda8;->f$2:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/server/wm/TaskMotionController;->$r8$lambda$l5oeOPHP8ed0CKMGLfnkloH2g_c(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method
