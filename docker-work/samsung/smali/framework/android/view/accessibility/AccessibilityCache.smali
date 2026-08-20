.class public Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
    }
.end annotation


# static fields
.field public static final greylist-max-o CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final greylist-max-o CHECK_INTEGRITY:Z

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityCache"

.field private static final blacklist VERBOSE:Z


# instance fields
.field private greylist-max-o mAccessibilityFocus:J

.field private blacklist mAccessibilityFocusedWindow:I

.field private final greylist-max-o mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private blacklist mEnabled:Z

.field private greylist-max-o mInputFocus:J

.field private blacklist mInputFocusWindow:I

.field private greylist-max-o mIsAllWindowsCached:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mValidWindowCacheTimeStamp:J

.field private final blacklist mWindowCacheByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 42
    const-string v0, "AccessibilityCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v3

    :goto_12
    sput-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    sput-boolean v2, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    .line 47
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .registers 4
    .param p1, "nodeRefresher"    # Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 75
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 76
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 84
    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 100
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 101
    return-void
.end method

.method private blacklist addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 189
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 190
    .local v0, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v0, :cond_15

    .line 191
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 192
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    :cond_15
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    .line 195
    .local v1, "windowId":I
    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v2, p2}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    return-void
.end method

.method private greylist-max-o clearNodesForWindowLocked(I)V
    .registers 4
    .param p1, "windowId"    # I

    .line 682
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearNodesForWindowLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_22
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 686
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v0, :cond_2d

    .line 687
    return-void

    .line 689
    :cond_2d
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 690
    return-void
.end method

.method private greylist-max-o clearSubTreeLocked(IJ)V
    .registers 6
    .param p1, "windowId"    # I
    .param p2, "rootNodeId"    # J

    .line 717
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 718
    const-string v0, "AccessibilityCache"

    const-string v1, "Clearing cached subtree."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 721
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v0, :cond_18

    .line 722
    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    .line 724
    :cond_18
    return-void
.end method

.method private blacklist clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z
    .registers 11
    .param p2, "rootNodeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)Z"
        }
    .end annotation

    .line 737
    .local p1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 738
    .local v0, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 740
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 741
    return v1

    .line 743
    :cond_d
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 744
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    .line 745
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_25

    .line 746
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    .line 747
    .local v4, "childNodeId":J
    invoke-direct {p0, p1, v4, v5}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 748
    return v1

    .line 745
    .end local v4    # "childNodeId":J
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 751
    .end local v3    # "i":I
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist clearWindowCacheLocked()V
    .registers 6

    .line 572
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 573
    const-string v0, "AccessibilityCache"

    const-string v1, "clearWindowCacheLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 577
    .local v0, "displayCounts":I
    if-lez v0, :cond_32

    .line 578
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_32

    .line 579
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 580
    .local v2, "displayId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 581
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 582
    .local v3, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-eqz v3, :cond_2a

    .line 583
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 585
    :cond_2a
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 578
    .end local v2    # "displayId":I
    .end local v3    # "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 588
    .end local v1    # "i":I
    :cond_32
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 589
    return-void
.end method

.method private blacklist isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z
    .registers 14
    .param p1, "nodeId"    # J
    .param p3, "ancestorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 668
    .local p5, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    cmp-long v0, p3, p1

    if-nez v0, :cond_6

    .line 669
    const/4 v0, 0x1

    return v0

    .line 671
    :cond_6
    invoke-virtual {p5, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 672
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_10

    .line 673
    const/4 v1, 0x0

    return v1

    .line 675
    :cond_10
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v3

    move-object v2, p0

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result v1

    return v1
.end method

.method private blacklist removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 7
    .param p1, "windowId"    # I
    .param p2, "sourceId"    # J

    .line 304
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 305
    const-string v0, "AccessibilityCache"

    const-string v1, "Removing cached node."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 308
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 309
    return-object v1

    .line 311
    :cond_17
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 313
    .local v2, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_20

    .line 314
    return-object v1

    .line 316
    :cond_20
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 317
    return-object v2
.end method


# virtual methods
.method public greylist-max-o add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 14
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 474
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    .line 476
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 477
    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_12
    monitor-exit v0

    return-void

    .line 481
    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_36

    .line 482
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_36
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    .line 486
    .local v1, "windowId":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 487
    .local v2, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v2, :cond_4f

    .line 488
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    move-object v2, v3

    .line 489
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    :cond_4f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    .line 493
    .local v3, "sourceId":J
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 494
    .local v5, "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v5, :cond_92

    .line 499
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v6

    .line 501
    .local v6, "newChildrenIds":Landroid/util/LongArray;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    .line 502
    .local v7, "oldChildCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_64
    if-ge v8, v7, :cond_83

    .line 503
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v9

    .line 505
    .local v9, "oldChildId":J
    if-eqz v6, :cond_72

    invoke-virtual {v6, v9, v10}, Landroid/util/LongArray;->indexOf(J)I

    move-result v11

    if-gez v11, :cond_75

    .line 506
    :cond_72
    invoke-direct {p0, v1, v9, v10}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 508
    :cond_75
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_80

    .line 512
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 513
    monitor-exit v0

    return-void

    .line 502
    .end local v9    # "oldChildId":J
    :cond_80
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    .line 520
    .end local v8    # "i":I
    :cond_83
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v8

    .line 521
    .local v8, "oldParentId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_92

    .line 522
    invoke-direct {p0, v1, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 528
    .end local v6    # "newChildrenIds":Landroid/util/LongArray;
    .end local v7    # "oldChildCount":I
    .end local v8    # "oldParentId":J
    :cond_92
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 529
    .local v6, "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 530
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v7

    const-wide/32 v8, 0x7fffffff

    if-eqz v7, :cond_b5

    .line 531
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_b0

    cmp-long v7, v10, v3

    if-eqz v7, :cond_b0

    .line 533
    invoke-direct {p0, v1, v10, v11}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 535
    :cond_b0
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 536
    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto :goto_c0

    .line 537
    :cond_b5
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v10, v3

    if-nez v7, :cond_c0

    .line 538
    iput-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 539
    const/4 v7, -0x1

    iput v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 541
    :cond_c0
    :goto_c0
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 542
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 543
    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 545
    .end local v1    # "windowId":I
    .end local v2    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "sourceId":J
    .end local v5    # "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_ca
    monitor-exit v0

    .line 546
    return-void

    .line 545
    :catchall_cc
    move-exception v1

    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_3 .. :try_end_ce} :catchall_cc

    throw v1
.end method

.method public greylist-max-o addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 6
    .param p1, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 173
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    .line 175
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 176
    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_12
    monitor-exit v0

    return-void

    .line 180
    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_48

    .line 181
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at display Id [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_48
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public greylist-max-o checkIntegrity()V
    .registers 23

    .line 762
    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 764
    :try_start_5
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_17

    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 765
    monitor-exit v2

    return-void

    .line 768
    :cond_17
    const/4 v0, 0x0

    .line 769
    .local v0, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v3, 0x0

    .line 771
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v4, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 772
    .local v4, "displayCounts":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v4, :cond_84

    .line 773
    iget-object v6, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 774
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 776
    .local v6, "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v6, :cond_2d

    .line 777
    goto :goto_81

    .line 780
    :cond_2d
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 781
    .local v7, "windowCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_32
    if-ge v8, v7, :cond_81

    .line 782
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 785
    .local v9, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 786
    if-eqz v3, :cond_5b

    .line 787
    const-string v10, "AccessibilityCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicate active window:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 789
    :cond_5b
    move-object v3, v9

    .line 793
    :cond_5c
    :goto_5c
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 794
    if-eqz v0, :cond_7d

    .line 795
    const-string v10, "AccessibilityCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicate focused window:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 797
    :cond_7d
    move-object v0, v9

    .line 781
    .end local v9    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_7e
    :goto_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 772
    .end local v6    # "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v7    # "windowCount":I
    .end local v8    # "j":I
    :cond_81
    :goto_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 804
    .end local v5    # "i":I
    :cond_84
    const/4 v5, 0x0

    .line 805
    .local v5, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v6, 0x0

    .line 807
    .local v6, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v7, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 808
    .local v7, "nodesForWindowCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8d
    if-ge v8, v7, :cond_22d

    .line 809
    iget-object v9, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    .line 810
    .local v9, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-gtz v10, :cond_a5

    .line 811
    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    goto/16 :goto_221

    .line 814
    :cond_a5
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 815
    .local v10, "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v11, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 817
    .local v11, "windowId":I
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    .line 818
    .local v12, "nodeCount":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_b5
    if-ge v13, v12, :cond_21b

    .line 819
    invoke-virtual {v9, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 822
    .local v14, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ed

    .line 823
    const-string v15, "AccessibilityCache"

    move-object/from16 v16, v0

    .end local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v16, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    move-object/from16 v19, v3

    move/from16 v17, v4

    goto/16 :goto_20f

    .line 830
    .end local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_ed
    move-object/from16 v16, v0

    .end local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 831
    if-eqz v5, :cond_11a

    .line 832
    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate accessibility focus:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " in window:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    .line 835
    :cond_11a
    move-object v5, v14

    .line 840
    :cond_11b
    :goto_11b
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 841
    if-eqz v6, :cond_146

    .line 842
    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate input focus: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " in window:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    .line 845
    :cond_146
    move-object v6, v14

    .line 850
    :cond_147
    :goto_147
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 851
    .local v0, "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1aa

    .line 852
    const/4 v1, 0x0

    .line 853
    .local v1, "childOfItsParent":Z
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v15

    .line 854
    .local v15, "childCount":I
    const/16 v17, 0x0

    move/from16 v18, v1

    move/from16 v1, v17

    .local v1, "k":I
    .local v18, "childOfItsParent":Z
    :goto_15e
    if-ge v1, v15, :cond_17a

    .line 855
    move-object/from16 v19, v3

    move/from16 v17, v4

    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .local v17, "displayCounts":I
    .local v19, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 856
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-ne v3, v14, :cond_173

    .line 857
    const/4 v4, 0x1

    .line 858
    .end local v18    # "childOfItsParent":Z
    .local v4, "childOfItsParent":Z
    move v1, v4

    goto :goto_180

    .line 854
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "childOfItsParent":Z
    .restart local v18    # "childOfItsParent":Z
    :cond_173
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto :goto_15e

    .end local v17    # "displayCounts":I
    .end local v19    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v4, "displayCounts":I
    :cond_17a
    move-object/from16 v19, v3

    move/from16 v17, v4

    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .restart local v17    # "displayCounts":I
    .restart local v19    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    move/from16 v1, v18

    .line 861
    .end local v18    # "childOfItsParent":Z
    .local v1, "childOfItsParent":Z
    :goto_180
    if-nez v1, :cond_1a7

    .line 862
    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    .end local v1    # "childOfItsParent":Z
    .restart local v18    # "childOfItsParent":Z
    const-string v1, "Invalid parent-child relation between parent: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and child: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ae

    .line 861
    .end local v18    # "childOfItsParent":Z
    .restart local v1    # "childOfItsParent":Z
    :cond_1a7
    move/from16 v18, v1

    .end local v1    # "childOfItsParent":Z
    .restart local v18    # "childOfItsParent":Z
    goto :goto_1ae

    .line 851
    .end local v15    # "childCount":I
    .end local v17    # "displayCounts":I
    .end local v18    # "childOfItsParent":Z
    .end local v19    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v4    # "displayCounts":I
    :cond_1aa
    move-object/from16 v19, v3

    move/from16 v17, v4

    .line 868
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .restart local v17    # "displayCounts":I
    .restart local v19    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_1ae
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 869
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1b3
    if-ge v3, v1, :cond_20a

    .line 870
    move-object v15, v5

    .end local v5    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v15, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v14, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 871
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_1fc

    .line 872
    move-object/from16 v18, v6

    .end local v6    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v18, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 873
    .local v5, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eq v5, v14, :cond_1f7

    .line 874
    const-string v6, "AccessibilityCache"

    move/from16 v20, v1

    .end local v1    # "childCount":I
    .local v20, "childCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v21, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-string v4, "Invalid child-parent relation between child: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and parent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_202

    .line 873
    .end local v20    # "childCount":I
    .end local v21    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v1    # "childCount":I
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1f7
    move/from16 v20, v1

    move-object/from16 v21, v4

    .end local v1    # "childCount":I
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v20    # "childCount":I
    .restart local v21    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_202

    .line 871
    .end local v5    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v18    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v20    # "childCount":I
    .end local v21    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v1    # "childCount":I
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v6    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1fc
    move/from16 v20, v1

    move-object/from16 v21, v4

    move-object/from16 v18, v6

    .line 869
    .end local v1    # "childCount":I
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v18    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v20    # "childCount":I
    :goto_202
    add-int/lit8 v3, v3, 0x1

    move-object v5, v15

    move-object/from16 v6, v18

    move/from16 v1, v20

    goto :goto_1b3

    .end local v15    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v18    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v20    # "childCount":I
    .restart local v1    # "childCount":I
    .local v5, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v6    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_20a
    move/from16 v20, v1

    move-object v15, v5

    move-object/from16 v18, v6

    .line 818
    .end local v0    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "childCount":I
    .end local v3    # "k":I
    .end local v14    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_20f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto/16 :goto_b5

    .end local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v17    # "displayCounts":I
    .end local v19    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v0, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v4, "displayCounts":I
    :cond_21b
    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    .line 808
    .end local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .end local v9    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v10    # "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v11    # "windowId":I
    .end local v12    # "nodeCount":I
    .end local v13    # "j":I
    .restart local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v17    # "displayCounts":I
    .restart local v19    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_221
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto/16 :goto_8d

    .end local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v17    # "displayCounts":I
    .end local v19    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v4    # "displayCounts":I
    :cond_22d
    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    .line 881
    .end local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .end local v5    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "nodesForWindowCount":I
    .end local v8    # "i":I
    monitor-exit v2

    .line 882
    return-void

    .line 881
    :catchall_235
    move-exception v0

    monitor-exit v2
    :try_end_237
    .catchall {:try_start_5 .. :try_end_237} :catchall_235

    throw v0
.end method

.method public greylist-max-o clear()V
    .registers 5

    .line 552
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_3
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 554
    const-string v1, "AccessibilityCache"

    const-string v2, "clear()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_e
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    .line 557
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 558
    .local v1, "nodesForWindowCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_27

    .line 559
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 560
    .local v3, "windowId":I
    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 558
    .end local v3    # "windowId":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 563
    .end local v2    # "i":I
    :cond_27
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 564
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 566
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 567
    iput v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 568
    .end local v1    # "nodesForWindowCount":I
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public blacklist clearSubTree(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 694
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 695
    return v0

    .line 697
    :cond_4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 698
    :try_start_7
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v2, :cond_18

    .line 699
    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_16

    .line 700
    const-string v2, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_16
    monitor-exit v1

    return v0

    .line 704
    :cond_18
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 705
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 706
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public blacklist getFocus(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 22
    .param p1, "focusType"    # I
    .param p2, "initialNodeId"    # J
    .param p4, "windowId"    # I

    .line 605
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p4

    iget-object v10, v7, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 606
    :try_start_9
    iget-boolean v0, v7, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v11, 0x0

    if-nez v0, :cond_1b

    .line 607
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_19

    .line 608
    const-string v0, "AccessibilityCache"

    const-string v1, "Cache is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_19
    monitor-exit v10

    return-object v11

    .line 614
    :cond_1b
    const/4 v0, 0x2

    if-ne v8, v0, :cond_25

    .line 615
    iget v1, v7, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 616
    .local v1, "currentFocusWindowId":I
    iget-wide v2, v7, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    move v12, v1

    move-wide v13, v2

    .local v2, "currentFocusId":J
    goto :goto_2b

    .line 618
    .end local v1    # "currentFocusWindowId":I
    .end local v2    # "currentFocusId":J
    :cond_25
    iget v1, v7, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 619
    .restart local v1    # "currentFocusWindowId":I
    iget-wide v2, v7, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    move v12, v1

    move-wide v13, v2

    .line 622
    .end local v1    # "currentFocusWindowId":I
    .local v12, "currentFocusWindowId":I
    .local v13, "currentFocusId":J
    :goto_2b
    const/4 v1, -0x1

    if-ne v12, v1, :cond_30

    .line 623
    monitor-exit v10

    return-object v11

    .line 626
    :cond_30
    const/4 v1, -0x2

    if-eq v9, v1, :cond_37

    if-eq v9, v12, :cond_37

    .line 628
    monitor-exit v10

    return-object v11

    .line 631
    :cond_37
    iget-object v1, v7, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 632
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    move-object v15, v1

    .line 633
    .local v15, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v15, :cond_44

    .line 634
    monitor-exit v10

    return-object v11

    .line 637
    :cond_44
    invoke-virtual {v15, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v6, v1

    .line 638
    .local v6, "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_4f

    .line 639
    monitor-exit v10

    return-object v11

    .line 642
    :cond_4f
    cmp-long v1, p2, v13

    if-eqz v1, :cond_8a

    .line 643
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v2

    .line 642
    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    move-object/from16 v16, v6

    .end local v6    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v16, "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result v1

    if-eqz v1, :cond_65

    goto :goto_8c

    .line 656
    :cond_65
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_88

    .line 657
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocus is null with type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 658
    if-ne v8, v0, :cond_7b

    .line 659
    const-string v0, "FOCUS_ACCESSIBILITY"

    goto :goto_7d

    .line 660
    :cond_7b
    const-string v0, "FOCUS_INPUT"

    :goto_7d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_88
    monitor-exit v10

    return-object v11

    .line 642
    .end local v16    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v6    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_8a
    move-object/from16 v16, v6

    .line 644
    .end local v6    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v16    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_8c
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_ca

    .line 645
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocus(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v16

    .end local v16    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v3, "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 647
    if-ne v8, v0, :cond_bc

    .line 648
    const-string v0, "FOCUS_ACCESSIBILITY"

    goto :goto_be

    .line 649
    :cond_bc
    const-string v0, "FOCUS_INPUT"

    :goto_be
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 644
    .end local v3    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v16    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_ca
    move-object/from16 v3, v16

    .line 653
    .end local v16    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v3    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_cc
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-exit v10

    return-object v0

    .line 663
    .end local v3    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "currentFocusWindowId":I
    .end local v13    # "currentFocusId":J
    .end local v15    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_d3
    move-exception v0

    monitor-exit v10
    :try_end_d5
    .catchall {:try_start_9 .. :try_end_d5} :catchall_d3

    throw v0
.end method

.method public greylist-max-o getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10
    .param p1, "windowId"    # I
    .param p2, "accessibilityNodeId"    # J

    .line 329
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 331
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 332
    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_13
    monitor-exit v0

    return-object v2

    .line 336
    :cond_15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 337
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_21

    .line 338
    monitor-exit v0

    return-object v2

    .line 340
    :cond_21
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 341
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_2f

    .line 344
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v3

    .line 346
    :cond_2f
    sget-boolean v3, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v3, :cond_59

    .line 347
    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_59
    monitor-exit v0

    return-object v2

    .line 350
    .end local v1    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public greylist-max-o getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 8
    .param p1, "windowId"    # I

    .line 444
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 446
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 447
    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_13
    monitor-exit v0

    return-object v2

    .line 451
    :cond_15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 452
    .local v1, "displayCounts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v1, :cond_3b

    .line 453
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 454
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 455
    .local v4, "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v4, :cond_29

    .line 456
    goto :goto_38

    .line 459
    :cond_29
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 460
    .local v5, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v5, :cond_38

    .line 461
    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v2, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    monitor-exit v0

    return-object v2

    .line 452
    .end local v4    # "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v5    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 464
    .end local v3    # "i":I
    :cond_3b
    monitor-exit v0

    return-object v2

    .line 465
    .end local v1    # "displayCounts":I
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public blacklist getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 384
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 385
    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_13
    monitor-exit v0

    return-object v2

    .line 389
    :cond_15
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    if-nez v1, :cond_1b

    .line 390
    monitor-exit v0

    return-object v2

    .line 392
    :cond_1b
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 393
    .local v1, "returnWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 395
    .local v3, "displayCounts":I
    if-lez v3, :cond_83

    .line 396
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v3, :cond_81

    .line 397
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 398
    .local v4, "displayId":I
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 399
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 401
    .local v5, "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v5, :cond_3c

    .line 402
    goto :goto_7e

    .line 405
    :cond_3c
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 406
    .local v6, "windowCount":I
    if-lez v6, :cond_7e

    .line 408
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 409
    .local v7, "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 411
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_48
    if-ge v8, v6, :cond_5a

    .line 412
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 413
    .local v9, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v10

    invoke-virtual {v7, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    .end local v9    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 419
    .end local v8    # "j":I
    :cond_5a
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 420
    .local v8, "sortedWindowCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 422
    .local v9, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v10, v8, -0x1

    .local v10, "j":I
    :goto_65
    if-ltz v10, :cond_7b

    .line 423
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 424
    .local v11, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    new-instance v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v12, v11}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->removeAt(I)V

    .line 422
    .end local v11    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v10, v10, -0x1

    goto :goto_65

    .line 427
    .end local v10    # "j":I
    :cond_7b
    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    .end local v4    # "displayId":I
    .end local v5    # "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v6    # "windowCount":I
    .end local v7    # "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v8    # "sortedWindowCount":I
    .end local v9    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_7e
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 430
    .end local v2    # "i":I
    :cond_81
    monitor-exit v0

    return-object v1

    .line 432
    :cond_83
    monitor-exit v0

    return-object v2

    .line 433
    .end local v1    # "returnWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    .end local v3    # "displayCounts":I
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_85

    throw v1
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 107
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 9
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 355
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 356
    return v0

    .line 358
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    .line 359
    .local v1, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    .line 360
    .local v2, "accessibilityNodeId":J
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 361
    :try_start_f
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v5, :cond_20

    .line 362
    sget-boolean v5, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v5, :cond_1e

    .line 363
    const-string v5, "AccessibilityCache"

    const-string v6, "Cache is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1e
    monitor-exit v4

    return v0

    .line 367
    :cond_20
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 368
    .local v5, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v5, :cond_2c

    .line 369
    monitor-exit v4

    return v0

    .line 371
    :cond_2c
    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_33

    const/4 v0, 0x1

    :cond_33
    monitor-exit v4

    return v0

    .line 372
    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_35
    move-exception v0

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_35

    throw v0
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_4
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v2, :cond_15

    .line 210
    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_13

    .line 211
    const-string v2, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_13
    monitor-exit v1

    return-void

    .line 215
    :cond_15
    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_38

    .line 216
    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAccessibilityEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_38
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    .line 219
    .local v3, "eventType":I
    const/4 v4, 0x1

    const-wide/32 v5, 0x7fffffff

    sparse-switch v3, :sswitch_data_128

    goto/16 :goto_105

    .line 275
    :sswitch_45
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    .line 276
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_c6

    .line 280
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    .line 281
    goto/16 :goto_105

    .line 231
    :sswitch_58
    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_105

    iget v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 232
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v8

    if-ne v7, v8, :cond_105

    .line 233
    iget v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v7, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    move-object v0, v7

    .line 235
    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 236
    const/4 v5, -0x1

    iput v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto/16 :goto_105

    .line 221
    :sswitch_7a
    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_85

    .line 222
    iget v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    invoke-direct {p0, v5, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 224
    :cond_85
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 225
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 226
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object v0, v5

    .line 228
    goto/16 :goto_105

    .line 271
    :sswitch_9a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 272
    goto :goto_105

    .line 258
    :sswitch_a6
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_a9
    .catchall {:try_start_4 .. :try_end_a9} :catchall_124

    .line 259
    :try_start_a9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v6

    .line 260
    .local v6, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v7

    .line 261
    .local v7, "sourceId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v9

    and-int/2addr v9, v4

    if-eqz v9, :cond_bc

    .line 263
    invoke-direct {p0, v6, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_c1

    .line 265
    :cond_bc
    invoke-direct {p0, v6, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    move-object v0, v9

    .line 267
    .end local v6    # "windowId":I
    .end local v7    # "sourceId":J
    :goto_c1
    monitor-exit v5

    .line 268
    goto :goto_105

    .line 267
    :catchall_c3
    move-exception v2

    monitor-exit v5
    :try_end_c5
    .catchall {:try_start_a9 .. :try_end_c5} :catchall_c3

    .end local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityCache;
    .end local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :try_start_c5
    throw v2

    .line 284
    .restart local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityCache;
    .restart local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_c6
    :sswitch_c6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    .line 285
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    goto :goto_105

    .line 241
    :sswitch_d0
    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_df

    .line 242
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 244
    :cond_df
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 245
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 246
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object v0, v5

    .line 247
    goto :goto_105

    .line 253
    :sswitch_f7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    .line 254
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 253
    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    move-object v0, v5

    .line 255
    nop

    .line 288
    .end local v3    # "eventType":I
    :cond_105
    :goto_105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_c5 .. :try_end_106} :catchall_124

    .line 290
    if-eqz v0, :cond_11c

    .line 291
    if-eqz v2, :cond_111

    .line 292
    const-string v1, "AccessibilityCache"

    const-string v2, "Refreshing and re-adding cached node."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_111
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    invoke-virtual {v1, v0, v4}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 295
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 298
    :cond_11c
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz v1, :cond_123

    .line 299
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    .line 301
    :cond_123
    return-void

    .line 288
    :catchall_124
    move-exception v2

    :try_start_125
    monitor-exit v1
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw v2

    nop

    :sswitch_data_128
    .sparse-switch
        0x1 -> :sswitch_f7
        0x4 -> :sswitch_f7
        0x8 -> :sswitch_d0
        0x10 -> :sswitch_f7
        0x20 -> :sswitch_c6
        0x800 -> :sswitch_a6
        0x1000 -> :sswitch_9a
        0x2000 -> :sswitch_f7
        0x8000 -> :sswitch_7a
        0x10000 -> :sswitch_58
        0x400000 -> :sswitch_45
    .end sparse-switch
.end method

.method public blacklist setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 112
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    .line 114
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist setWindowsOnAllDisplays(Landroid/util/SparseArray;J)V
    .registers 12
    .param p2, "populationTimeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;J)V"
        }
    .end annotation

    .line 129
    .local p1, "windowsOnAllDisplays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    .line 131
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 132
    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_12
    monitor-exit v0

    return-void

    .line 136
    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 137
    const-string v1, "AccessibilityCache"

    const-string v2, "Set windows"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1f
    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_27

    .line 141
    monitor-exit v0

    return-void

    .line 143
    :cond_27
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    .line 144
    if-nez p1, :cond_2e

    .line 145
    monitor-exit v0

    return-void

    .line 148
    :cond_2e
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 149
    .local v1, "displayCounts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v1, :cond_59

    .line 150
    nop

    .line 151
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 153
    .local v3, "windowsOfDisplay":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v3, :cond_3f

    .line 154
    goto :goto_56

    .line 157
    :cond_3f
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 158
    .local v4, "displayId":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 159
    .local v5, "windowCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_48
    if-ge v6, v5, :cond_56

    .line 160
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {p0, v4, v7}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 149
    .end local v3    # "windowsOfDisplay":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v4    # "displayId":I
    .end local v5    # "windowCount":I
    .end local v6    # "j":I
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 163
    .end local v2    # "i":I
    :cond_59
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 164
    .end local v1    # "displayCounts":I
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method
