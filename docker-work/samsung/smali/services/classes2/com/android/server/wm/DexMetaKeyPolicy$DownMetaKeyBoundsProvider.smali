.class public Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;
.super Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;
.source "DexMetaKeyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexMetaKeyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownMetaKeyBoundsProvider"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexMetaKeyPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V

    return-void
.end method


# virtual methods
.method public applyBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 4

    .line 514
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->isMinimizeBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 515
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexMetaKeyPolicy;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z

    return-void

    .line 518
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 519
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexMetaKeyPolicy;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    return-void

    .line 523
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopAppToken()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_3e

    .line 524
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_3e

    .line 530
    :cond_33
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexMetaKeyPolicy;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public canUseShiftKey(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 502
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy;->isMinHeightBounds(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public getLaunchBounds(Lcom/android/server/wm/Task;Landroid/view/KeyEvent;)Landroid/graphics/Rect;
    .registers 5

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 463
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftBottomQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 464
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 465
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightBottomQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 466
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftTopQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 467
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmLeftHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 468
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightTopQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 469
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmRightHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 470
    :cond_64
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->getLaunchBoundsWhenShiftPressed(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 472
    :cond_6f
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_85

    .line 473
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->hasMetaKeyBounds()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->takeMetaKeyBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_84

    :cond_80
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getDefaultBounds(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object p0

    :goto_84
    return-object p0

    .line 475
    :cond_85
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMinimizeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getLaunchBoundsWhenShiftPressed(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 4

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->canUseShiftKey(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 481
    sget-object p0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    return-object p0

    .line 482
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexMetaKeyPolicy;->isMaxHeightBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 483
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmMinHeightBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 484
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->hasMetaKeyBounds()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 485
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->takeMetaKeyBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 488
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getDefaultBounds(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object p1

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 490
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-object p1
.end method

.method public updateTaskBoundsInfoIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 4

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isMinHeightBounds(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 508
    new-instance p2, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;->this$0:Lcom/android/server/wm/DexMetaKeyPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->-$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setMetaKeyBounds(Landroid/graphics/Rect;)V

    :cond_16
    return-void
.end method
