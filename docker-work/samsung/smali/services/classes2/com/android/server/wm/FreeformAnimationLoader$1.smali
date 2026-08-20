.class public Lcom/android/server/wm/FreeformAnimationLoader$1;
.super Ljava/lang/Object;
.source "FreeformAnimationLoader.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FreeformAnimationLoader;->loadMinimizeAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformAnimationLoader;

.field public final synthetic val$task:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformAnimationLoader;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 179
    iput-object p1, p0, Lcom/android/server/wm/FreeformAnimationLoader$1;->this$0:Lcom/android/server/wm/FreeformAnimationLoader;

    iput-object p2, p0, Lcom/android/server/wm/FreeformAnimationLoader$1;->val$task:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 188
    iget-object p1, p0, Lcom/android/server/wm/FreeformAnimationLoader$1;->this$0:Lcom/android/server/wm/FreeformAnimationLoader;

    iget-object p1, p1, Lcom/android/server/wm/AnimationLoader;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformAnimationLoader$1;->val$task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeAnimationEnd(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
