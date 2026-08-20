.class public Lcom/android/server/wm/DisplayPolicy$1;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;
    .registers 1

    .line 691
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 692
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public onDebug()V
    .registers 1

    return-void
.end method

.method public onDown()V
    .registers 1

    .line 697
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$1;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 699
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->onTouchStart()V

    :cond_9
    return-void
.end method

.method public onFling(I)V
    .registers 3

    .line 673
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    if-eqz v0, :cond_5

    return-void

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_1b

    .line 680
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    :cond_1b
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .registers 4

    .line 729
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 731
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 734
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmTopFullscreenOpaqueWindowState(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    .line 745
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x1f4

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onMouseHoverAtTop()V
    .registers 4

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 715
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 723
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x1f4

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onMouseLeaveFromEdge()V
    .registers 2

    .line 751
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onSwipeFromBottom()V
    .registers 4

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 605
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBarPosition(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v1

    if-ne v1, v2, :cond_1f

    .line 606
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_25

    .line 607
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mfindAltBarMatchingPosition(Lcom/android/server/wm/DisplayPolicy;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 608
    :goto_25
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V

    .line 609
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public onSwipeFromLeft()V
    .registers 5

    .line 626
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 628
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    const/4 v2, 0x1

    .line 630
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wm/DisplayPolicy$1;->requestTransientBarsForSideSwipe(Landroid/graphics/Region;II)V

    .line 632
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 633
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void

    :catchall_1c
    move-exception p0

    .line 632
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onSwipeFromRight()V
    .registers 5

    .line 614
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 616
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    const/4 v2, 0x2

    .line 618
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wm/DisplayPolicy$1;->requestTransientBarsForSideSwipe(Landroid/graphics/Region;II)V

    .line 620
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 621
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void

    :catchall_1c
    move-exception p0

    .line 620
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onSwipeFromTop()V
    .registers 4

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 594
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmStatusBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 595
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmStatusBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_1e

    .line 596
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mfindAltBarMatchingPosition(Lcom/android/server/wm/DisplayPolicy;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 597
    :goto_1e
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V

    .line 598
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public onUpOrCancel()V
    .registers 1

    .line 705
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$1;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 707
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->onTouchEnd()V

    :cond_9
    return-void
.end method

.method public final requestTransientBarsForSideSwipe(Landroid/graphics/Region;II)V
    .registers 6

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBarPosition(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v0

    if-ne v0, p2, :cond_17

    .line 640
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object p2

    goto :goto_1d

    .line 641
    :cond_17
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p2, p3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mfindAltBarMatchingPosition(Lcom/android/server/wm/DisplayPolicy;I)Lcom/android/server/wm/WindowState;

    move-result-object p2

    .line 642
    :goto_1d
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBarAlwaysShowOnSideGesture(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_35

    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmSystemGestures(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;

    move-result-object p3

    .line 643
    invoke-virtual {p3, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result p1

    if-nez p1, :cond_35

    move p1, v1

    goto :goto_36

    :cond_35
    move p1, v0

    :goto_36
    if-nez p2, :cond_6e

    if-nez p1, :cond_6e

    .line 646
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$msupportTransientEdgeInSplitMode(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 647
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 648
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object p2

    if-nez p2, :cond_5b

    .line 649
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1, v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmSkipTransferTouchToStatusBar(Lcom/android/server/wm/DisplayPolicy;Z)V

    .line 650
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmStatusBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 652
    :cond_5b
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p2, p1, v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V

    .line 653
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmSkipTransferTouchToStatusBar(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 654
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmSkipTransferTouchToStatusBar(Lcom/android/server/wm/DisplayPolicy;Z)V

    :cond_6d
    return-void

    :cond_6e
    if-eqz p2, :cond_71

    move v0, v1

    :cond_71
    if-eqz p2, :cond_74

    goto :goto_7a

    .line 666
    :cond_74
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->findTransientNavOrAltBar()Lcom/android/server/wm/WindowState;

    move-result-object p2

    .line 667
    :goto_7a
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, p2, v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method
