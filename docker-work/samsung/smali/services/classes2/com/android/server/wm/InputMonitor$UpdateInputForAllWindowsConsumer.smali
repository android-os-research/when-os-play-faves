.class public final Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateInputForAllWindowsConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field public mAddPipInputConsumerHandle:Z

.field public mAddRecentsAnimationInputConsumerHandle:Z

.field public mAddWallpaperInputConsumerHandle:Z

.field public mInDrag:Z

.field public mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field public mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field public mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field public final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateInputWindows(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->updateInputWindows(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .registers 2

    .line 615
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .registers 10

    .line 674
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 675
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v1, :cond_129

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v1, :cond_129

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_129

    .line 688
    :cond_12
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 691
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    .line 692
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2e

    .line 693
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 694
    invoke-virtual {v2, v5}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move v5, v3

    goto :goto_2f

    :cond_2e
    move v5, v4

    .line 695
    :goto_2f
    iget-boolean v6, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    if-eqz v6, :cond_60

    if-eqz v5, :cond_60

    .line 696
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v5, v5, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/RecentsAnimationController;->updateInputConsumerForApp(Landroid/view/InputWindowHandle;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 699
    invoke-virtual {v2}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 701
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v6, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v6}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/InputConsumerImpl;->reparent(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 702
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v5}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const v6, 0x7ffffffd

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;I)V

    .line 703
    iput-boolean v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 708
    :cond_60
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 709
    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    if-eqz v2, :cond_ad

    .line 710
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 711
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v5, v5, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 712
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 711
    invoke-virtual {v5, v6}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 713
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_ad

    .line 716
    iget-object v6, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v7, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v7}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 717
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v6, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v6}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcom/android/server/wm/InputConsumerImpl;->reparent(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 718
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v5}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const v6, 0x7ffffffe

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;I)V

    .line 719
    iput-boolean v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 724
    :cond_ad
    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    if-eqz v2, :cond_d4

    .line 725
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7dd

    if-ne v2, v5, :cond_d4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 726
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/4 v5, 0x0

    .line 727
    invoke-virtual {v2, v5}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 729
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v5}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v2, v5, p1}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 730
    iput-boolean v4, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    :cond_d4
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_dd

    .line 735
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fputmDisableWallpaperTouchEvents(Lcom/android/server/wm/InputMonitor;Z)V

    .line 742
    :cond_dd
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInDrag:Z

    if-eqz v1, :cond_fb

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 743
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v1, :cond_f0

    goto :goto_fb

    .line 747
    :cond_f0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DragDropController;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 752
    :cond_fb
    :goto_fb
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmService(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mKeyInterceptionInfoForToken:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 753
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getKeyInterceptionInfo()Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v3

    .line 752
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_128

    .line 756
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/InputMonitor;->populateInputWindowHandle(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V

    .line 757
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object p1, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    :cond_128
    return-void

    .line 676
    :cond_129
    :goto_129
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 679
    invoke-static {v0, p1}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V

    .line 680
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object p1, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    :cond_143
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 615
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final updateInputWindows(Z)V
    .registers 8

    const-wide/16 v0, 0x20

    const-string/jumbo v2, "updateInputWindows"

    .line 627
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 629
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "pip_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 630
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "wallpaper_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 631
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "recents_animation_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 633
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_31

    move v3, v4

    goto :goto_32

    :cond_31
    move v3, v5

    :goto_32
    iput-boolean v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 634
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v3, :cond_3a

    move v3, v4

    goto :goto_3b

    :cond_3a
    move v3, v5

    :goto_3b
    iput-boolean v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    if-eqz v2, :cond_41

    move v3, v4

    goto :goto_42

    :cond_41
    move v3, v5

    .line 635
    :goto_42
    iput-boolean v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    if-eqz v3, :cond_48

    .line 639
    iput-boolean v4, v2, Lcom/android/server/wm/InputConsumerImpl;->mNeedOneHandOpSpec:Z

    .line 643
    :cond_48
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2, v5}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fputmDisableWallpaperTouchEvents(Lcom/android/server/wm/InputMonitor;Z)V

    .line 644
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInDrag:Z

    .line 646
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/InputMonitor;->resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V

    .line 648
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmActiveRecentsActivity(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$smgetWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 649
    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    if-eqz v2, :cond_9d

    if-eqz p1, :cond_9d

    .line 650
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 651
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmActiveRecentsLayerRef(Lcom/android/server/wm/InputMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->-$$Nest$smgetWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_7f

    move-object p1, v2

    .line 654
    :cond_7f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 655
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 656
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 657
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 658
    iput-boolean v5, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 661
    :cond_9d
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1, p0, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 662
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-static {p1, v2}, Lcom/android/server/wm/InputMonitor;->-$$Nest$mupdateInputFocusRequest(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 664
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmUpdateInputWindowsImmediately(Lcom/android/server/wm/InputMonitor;)Z

    move-result p1

    if-nez p1, :cond_d1

    .line 665
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmInputTransaction(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 666
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p0}, Lcom/android/server/wm/InputMonitor;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 669
    :cond_d1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
