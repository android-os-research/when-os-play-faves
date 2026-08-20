.class public Lcom/android/server/wm/PopOverController$1;
.super Ljava/lang/Object;
.source "PopOverController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/PopOverController;->startTransparentAnimation(Lcom/android/server/wm/WindowState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PopOverController;

.field public final synthetic val$apply:Z

.field public final synthetic val$toAlpha:F

.field public final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PopOverController;ZLcom/android/server/wm/WindowState;F)V
    .registers 5

    .line 264
    iput-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    iput-boolean p2, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    iput-object p3, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    iput p4, p0, Lcom/android/server/wm/PopOverController$1;->val$toAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .line 277
    iget-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    invoke-static {p1}, Lcom/android/server/wm/PopOverController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/android/server/wm/PopOverController$1;->val$toAlpha:F

    goto :goto_1b

    :cond_19
    const/high16 v1, -0x40800000    # -1.0f

    :goto_1b
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    .line 279
    iget-object p0, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    invoke-static {p0}, Lcom/android/server/wm/PopOverController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 280
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b
    move-exception p0

    :try_start_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .line 267
    iget-boolean p1, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    if-nez p1, :cond_2e

    .line 268
    iget-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    invoke-static {p1}, Lcom/android/server/wm/PopOverController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    .line 270
    iget-object p0, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    invoke-static {p0}, Lcom/android/server/wm/PopOverController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/PopOverController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 271
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2e

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2e
    :goto_2e
    return-void
.end method
