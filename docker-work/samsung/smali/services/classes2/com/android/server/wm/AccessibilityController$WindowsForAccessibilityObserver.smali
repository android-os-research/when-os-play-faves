.class public final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mA11yWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

.field public final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field public final mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

.field public final mDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public mInitialized:Z

.field public final mRecurringAccessibilityEventsIntervalMillis:J

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTempA11yWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempPoint:Landroid/graphics/Point;

.field public final mTempRegion:Landroid/graphics/Region;

.field public final mTempRegion1:Landroid/graphics/Region;

.field public final mTempRegion2:Landroid/graphics/Region;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInitialized(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;Lcom/android/server/wm/AccessibilityWindowsPopulator;)V
    .registers 6

    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempA11yWindows:Ljava/util/List;

    .line 1479
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1481
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 1483
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1485
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1487
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion2:Landroid/graphics/Region;

    .line 1508
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1509
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1510
    iput p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    .line 1511
    new-instance p2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object p3, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1513
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 1515
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1516
    iput-object p4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mA11yWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    const/4 p1, 0x1

    .line 1517
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    return-void
.end method

.method public static addPopulatedWindowInfo(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;",
            "Landroid/graphics/Region;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object p0

    .line 1731
    iget-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1732
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Landroid/view/WindowInfo;->layer:I

    .line 1733
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    iget-object p0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearAndRecycleWindows(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1738
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 1740
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    invoke-virtual {v1}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public static isReportedWindowType(I)Z
    .registers 2

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method


# virtual methods
.method public computeChangedWindows(Z)V
    .registers 16

    .line 1546
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1547
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v3, "WindowManager.computeChangedWindows"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceSend="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1554
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1558
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1563
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1564
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 1566
    invoke-virtual {v2}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    goto :goto_40

    .line 1567
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->getTopFocusWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    :goto_40
    if-nez v2, :cond_47

    .line 1572
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_12c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1575
    :cond_47
    :try_start_47
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_5f

    const-string p0, "WindowManager"

    const-string p1, "display content is null, should be created later"

    .line 1578
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_47 .. :try_end_5b} :catchall_12c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1581
    :cond_5f
    :try_start_5f
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1582
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1583
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 1584
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 1586
    iget-object v6, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    const/4 v7, 0x0

    .line 1587
    invoke-virtual {v6, v7, v7, v5, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 1589
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempA11yWindows:Ljava/util/List;

    .line 1590
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mA11yWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    iget v8, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v5, v8, v4}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->populateVisibleWindowsOnScreenLocked(ILjava/util/List;)V

    .line 1592
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1593
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 1597
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    move v9, v7

    move v10, v9

    :goto_88
    if-ge v9, v8, :cond_cb

    .line 1601
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    .line 1602
    new-instance v12, Landroid/graphics/Region;

    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    .line 1603
    invoke-virtual {v11, v12}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInWindow(Landroid/graphics/Region;)V

    .line 1604
    invoke-virtual {p0, v11, v12, v6}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowMattersToAccessibility(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v13

    if-eqz v13, :cond_b0

    .line 1606
    invoke-static {v11, v12, v0, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addPopulatedWindowInfo(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V

    .line 1607
    invoke-virtual {p0, v11}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowMattersToUnaccountedSpaceComputation(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Z

    move-result v12

    if-eqz v12, :cond_aa

    .line 1608
    invoke-virtual {p0, v11, v6}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->updateUnaccountedSpace(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;)V

    .line 1610
    :cond_aa
    invoke-virtual {v11}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isFocused()Z

    move-result v11

    or-int/2addr v10, v11

    goto :goto_bf

    .line 1611
    :cond_b0
    invoke-virtual {v11}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isUntouchableNavigationBar()Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 1616
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController;->getNavBarInsets(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v11

    sget-object v12, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v11, v6, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1620
    :cond_bf
    :goto_bf
    invoke-virtual {v6}, Landroid/graphics/Region;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c8

    if-eqz v10, :cond_c8

    goto :goto_cb

    :cond_c8
    add-int/lit8 v9, v9, 0x1

    goto :goto_88

    .line 1626
    :cond_cb
    :goto_cb
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_cf
    const/4 v6, 0x1

    if-ge v7, v3, :cond_105

    .line 1628
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowInfo;

    .line 1629
    iget-object v9, v8, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e3

    const/4 v9, 0x0

    .line 1630
    iput-object v9, v8, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1632
    :cond_e3
    iget-object v9, v8, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v9, :cond_102

    .line 1633
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    :goto_ec
    if-ltz v9, :cond_102

    .line 1635
    iget-object v6, v8, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ff

    .line 1636
    iget-object v6, v8, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_ff
    add-int/lit8 v9, v9, -0x1

    goto :goto_ec

    :cond_102
    add-int/lit8 v7, v7, 0x1

    goto :goto_cf

    .line 1643
    :cond_105
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1644
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 1647
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 1648
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1649
    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_5f .. :try_end_11e} :catchall_12c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1650
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    invoke-interface {v1, p1, v3, v2, v0}, Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V

    .line 1654
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 1655
    iput-boolean v6, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    return-void

    :catchall_12c
    move-exception p0

    .line 1649
    :try_start_12d
    monitor-exit v1
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getTopFocusWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 1758
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public performComputeChangedWindows(Z)V
    .registers 7

    .line 1521
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1522
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceSend="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.performComputeChangedWindows"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1525
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1526
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    return-void
.end method

.method public scheduleComputeChangedWindows()V
    .registers 5

    .line 1530
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1531
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v3, "WindowManager.scheduleComputeChangedWindows"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 1534
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1535
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowsForAccessibilityObserver{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateUnaccountedSpace(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;)V
    .registers 5

    .line 1710
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result v0

    const/16 v1, 0x7f0

    if-eq v0, v1, :cond_23

    .line 1715
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion2:Landroid/graphics/Region;

    .line 1716
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInScreen(Landroid/graphics/Region;)V

    .line 1717
    sget-object v1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, p2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1720
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1721
    invoke-virtual {p1, p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->setLetterBoxBoundsIfNeeded(Landroid/graphics/Region;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1722
    sget-object p1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p0, p2, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_23
    return-void
.end method

.method public final windowMattersToAccessibility(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;Landroid/graphics/Region;Landroid/graphics/Region;)Z
    .registers 7

    .line 1678
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->ignoreRecentsAnimationForAccessibility()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 1682
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isFocused()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_10

    return v1

    .line 1689
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    move-result p0

    if-nez p0, :cond_25

    .line 1690
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result p0

    const/16 v2, 0x7f2

    if-eq p0, v2, :cond_25

    .line 1691
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isPIPMenu()Z

    move-result p0

    if-nez p0, :cond_25

    return v0

    .line 1696
    :cond_25
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Region;)Z

    move-result p0

    if-eqz p0, :cond_2c

    return v0

    .line 1701
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result p0

    if-eqz p0, :cond_37

    return v1

    :cond_37
    return v0
.end method

.method public final windowMattersToUnaccountedSpaceComputation(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Z
    .registers 4

    .line 1664
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_16

    .line 1665
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result p0

    const/16 v1, 0x7f2

    if-eq p0, v1, :cond_16

    .line 1666
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTrustedOverlay()Z

    move-result p0

    if-eqz p0, :cond_16

    return v0

    .line 1670
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getType()I

    move-result p0

    const/16 p1, 0x7f0

    if-ne p0, p1, :cond_1f

    return v0

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method
