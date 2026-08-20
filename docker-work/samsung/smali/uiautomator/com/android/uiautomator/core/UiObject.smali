.class public Lcom/android/uiautomator/core/UiObject;
.super Ljava/lang/Object;
.source "UiObject.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final FINGER_TOUCH_HALF_WIDTH:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final SWIPE_MARGIN_LIMIT:I = 0x5

.field protected static final WAIT_FOR_EVENT_TMEOUT:J = 0xbb8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final WAIT_FOR_SELECTOR_POLL:J = 0x3e8L

.field protected static final WAIT_FOR_SELECTOR_TIMEOUT:J = 0x2710L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final WAIT_FOR_WINDOW_TMEOUT:J = 0x157cL


# instance fields
.field private final mConfig:Lcom/android/uiautomator/core/Configurator;

.field private final mSelector:Lcom/android/uiautomator/core/UiSelector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/android/uiautomator/core/UiObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    .line 81
    iput-object p1, p0, Lcom/android/uiautomator/core/UiObject;->mSelector:Lcom/android/uiautomator/core/UiSelector;

    .line 82
    return-void
.end method

.method private getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 377
    move-object v0, p1

    .line 378
    .local v0, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    if-eqz v0, :cond_10

    .line 379
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    return-object v0

    .line 384
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;
    .registers 8
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 339
    if-nez p1, :cond_4

    .line 340
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_4
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiDevice;->getDisplayWidth()I

    move-result v0

    .line 345
    .local v0, "w":I
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/uiautomator/core/UiDevice;->getDisplayHeight()I

    move-result v1

    .line 346
    .local v1, "h":I
    invoke-static {p1, v0, v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 349
    .local v2, "nodeRect":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiObject;->getScrollableParent(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 350
    .local v3, "scrollableParentNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_1f

    .line 352
    return-object v2

    .line 356
    :cond_1f
    nop

    .line 357
    invoke-static {v3, v0, v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v4

    .line 359
    .local v4, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 360
    return-object v2

    .line 363
    :cond_2b
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    return-object v5
.end method

.method private safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 910
    if-nez p1, :cond_5

    .line 911
    const-string v0, ""

    return-object v0

    .line 912
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearTextField()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 626
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 628
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 629
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_4f

    .line 632
    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 633
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    .line 635
    new-instance v3, Lcom/android/uiautomator/core/UiObject;

    new-instance v4, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v4}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    const-string v5, "Select all"

    invoke-virtual {v4, v5}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 636
    .local v3, "selectAll":Lcom/android/uiautomator/core/UiObject;
    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Lcom/android/uiautomator/core/UiObject;->waitForExists(J)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 637
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiObject;->click()Z

    .line 639
    :cond_40
    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 641
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v4

    const/16 v5, 0x43

    invoke-virtual {v4, v5, v0}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 642
    return-void

    .line 630
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "selectAll":Lcom/android/uiautomator/core/UiObject;
    :cond_4f
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public click()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 396
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 398
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_2d

    .line 401
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 402
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    .line 403
    invoke-virtual {v5}, Lcom/android/uiautomator/core/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v5

    .line 402
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/uiautomator/core/InteractionController;->clickAndSync(IIJ)Z

    move-result v2

    return v2

    .line 399
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_2d
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clickAndWaitForNewWindow()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 416
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 417
    const-wide/16 v0, 0x157c

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->clickAndWaitForNewWindow(J)Z

    move-result v0

    return v0
.end method

.method public clickAndWaitForNewWindow(J)Z
    .registers 10
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 436
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 438
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_34

    .line 441
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 442
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    .line 443
    invoke-virtual {v5}, Lcom/android/uiautomator/core/Configurator;->getActionAcknowledgmentTimeout()J

    move-result-wide v5

    .line 442
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/uiautomator/core/InteractionController;->clickAndWaitForNewWindow(IIJ)Z

    move-result v2

    return v2

    .line 439
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_34
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clickBottomRight()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 488
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 490
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_27

    .line 493
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 494
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->clickNoSync(II)Z

    move-result v2

    return v2

    .line 491
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_27
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clickTopLeft()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 454
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 456
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_27

    .line 459
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 460
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->clickNoSync(II)Z

    move-result v2

    return v2

    .line 457
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_27
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dragTo(III)Z
    .registers 12
    .param p1, "destX"    # I
    .param p2, "destY"    # I
    .param p3, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 220
    .local v0, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    const/4 v7, 0x1

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    move-result v1

    return v1
.end method

.method public dragTo(Lcom/android/uiautomator/core/UiObject;I)Z
    .registers 12
    .param p1, "destObj"    # Lcom/android/uiautomator/core/UiObject;
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 200
    .local v0, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 201
    .local v1, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 202
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    .line 201
    const/4 v8, 0x1

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    move-result v2

    return v2
.end method

.method public exists()Z
    .registers 3

    .line 905
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 906
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->waitForExists(J)Z

    move-result v0

    return v0
.end method

.method protected findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10
    .param p1, "timeout"    # J

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 169
    .local v1, "startMills":J
    const-wide/16 v3, 0x0

    .line 170
    .local v3, "currentMills":J
    :cond_7
    :goto_7
    cmp-long v5, v3, p1

    if-gtz v5, :cond_33

    .line 171
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_1a

    .line 173
    goto :goto_33

    .line 176
    :cond_1a
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiDevice;->runWatchers()V

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v1

    .line 179
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_7

    .line 180
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_7

    .line 183
    :cond_33
    :goto_33
    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 831
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 832
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 833
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1b

    .line 836
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 837
    .local v1, "nodeRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 839
    return-object v1

    .line 834
    .end local v1    # "nodeRect":Landroid/graphics/Rect;
    :cond_1b
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;
    .registers 4
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 125
    new-instance v0, Lcom/android/uiautomator/core/UiObject;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method public getChildCount()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 152
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 155
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    return v1

    .line 153
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 557
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 558
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 559
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2b

    .line 562
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "retVal":Ljava/lang/String;
    sget-object v3, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v0, "getClassName() = %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-object v2

    .line 560
    .end local v2    # "retVal":Ljava/lang/String;
    :cond_2b
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 575
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 577
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1b

    .line 580
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 578
    :cond_1b
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;
    .registers 4
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 139
    new-instance v0, Lcom/android/uiautomator/core/UiObject;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->fromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method getInteractionController()Lcom/android/uiautomator/core/InteractionController;
    .registers 2

    .line 113
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 795
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 796
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 797
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1b

    .line 800
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 798
    :cond_1b
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getQueryController()Lcom/android/uiautomator/core/QueryController;
    .registers 2

    .line 103
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiDevice;->getAutomatorBridge()Lcom/android/uiautomator/core/UiAutomatorBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    return-object v0
.end method

.method public final getSelector()Lcom/android/uiautomator/core/UiSelector;
    .registers 3

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 93
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mSelector:Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 539
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 540
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 541
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2b

    .line 544
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/uiautomator/core/UiObject;->safeStringReturn(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "retVal":Ljava/lang/String;
    sget-object v3, Lcom/android/uiautomator/core/UiObject;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v0, "getText() = %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-object v2

    .line 542
    .end local v2    # "retVal":Ljava/lang/String;
    :cond_2b
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibleBounds()Landroid/graphics/Rect;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 815
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 816
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 817
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 820
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 818
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCheckable()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 683
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 685
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 688
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    return v1

    .line 686
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isChecked()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 651
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 653
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 656
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    return v1

    .line 654
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isClickable()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 715
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 717
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 720
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    return v1

    .line 718
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 699
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 701
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 704
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    return v1

    .line 702
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isFocusable()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 747
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 748
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 749
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 752
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    return v1

    .line 750
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isFocused()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 731
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 732
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 733
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 736
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    return v1

    .line 734
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isLongClickable()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 779
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 780
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 781
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 784
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    return v1

    .line 782
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isScrollable()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 763
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 765
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 768
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    return v1

    .line 766
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isSelected()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 667
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 669
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_17

    .line 672
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v1

    return v1

    .line 670
    :cond_17
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public longClick()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 505
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 507
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_27

    .line 510
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 511
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    move-result v2

    return v2

    .line 508
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_27
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public longClickBottomRight()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 471
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 473
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_27

    .line 476
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 477
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    move-result v2

    return v2

    .line 474
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_27
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public longClickTopLeft()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 522
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 524
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_27

    .line 527
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 528
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/uiautomator/core/InteractionController;->longTapNoSync(II)Z

    move-result v2

    return v2

    .line 525
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_27
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z
    .registers 3
    .param p1, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    .line 1088
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/InteractionController;->performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v0

    return v0
.end method

.method public performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    .registers 23
    .param p1, "startPoint1"    # Landroid/graphics/Point;
    .param p2, "startPoint2"    # Landroid/graphics/Point;
    .param p3, "endPoint1"    # Landroid/graphics/Point;
    .param p4, "endPoint2"    # Landroid/graphics/Point;
    .param p5, "steps"    # I

    .line 1007
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-nez p5, :cond_c

    .line 1008
    const/4 v4, 0x1

    .end local p5    # "steps":I
    .local v4, "steps":I
    goto :goto_e

    .line 1007
    .end local v4    # "steps":I
    .restart local p5    # "steps":I
    :cond_c
    move/from16 v4, p5

    .line 1010
    .end local p5    # "steps":I
    .restart local v4    # "steps":I
    :goto_e
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v4

    int-to-float v5, v5

    .line 1011
    .local v5, "stepX1":F
    iget v6, v2, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v4

    int-to-float v6, v6

    .line 1012
    .local v6, "stepY1":F
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    div-int/2addr v7, v4

    int-to-float v7, v7

    .line 1013
    .local v7, "stepX2":F
    iget v8, v3, Landroid/graphics/Point;->y:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v4

    int-to-float v8, v8

    .line 1016
    .local v8, "stepY2":F
    iget v9, v0, Landroid/graphics/Point;->x:I

    .line 1017
    .local v9, "eventX1":I
    iget v10, v0, Landroid/graphics/Point;->y:I

    .line 1018
    .local v10, "eventY1":I
    iget v11, v1, Landroid/graphics/Point;->x:I

    .line 1019
    .local v11, "eventX2":I
    iget v12, v1, Landroid/graphics/Point;->y:I

    .line 1022
    .local v12, "eventY2":I
    add-int/lit8 v13, v4, 0x2

    new-array v13, v13, [Landroid/view/MotionEvent$PointerCoords;

    .line 1023
    .local v13, "points1":[Landroid/view/MotionEvent$PointerCoords;
    add-int/lit8 v14, v4, 0x2

    new-array v14, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 1026
    .local v14, "points2":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3b
    add-int/lit8 v0, v4, 0x1

    if-ge v15, v0, :cond_7a

    .line 1027
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1028
    .local v0, "p1":Landroid/view/MotionEvent$PointerCoords;
    int-to-float v1, v9

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1029
    int-to-float v1, v10

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1030
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1031
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1032
    aput-object v0, v13, v15

    .line 1034
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1035
    .local v1, "p2":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v16, v0

    .end local v0    # "p1":Landroid/view/MotionEvent$PointerCoords;
    .local v16, "p1":Landroid/view/MotionEvent$PointerCoords;
    int-to-float v0, v11

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1036
    int-to-float v0, v12

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1037
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1038
    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1039
    aput-object v1, v14, v15

    .line 1041
    int-to-float v0, v9

    add-float/2addr v0, v5

    float-to-int v9, v0

    .line 1042
    int-to-float v0, v10

    add-float/2addr v0, v6

    float-to-int v10, v0

    .line 1043
    int-to-float v0, v11

    add-float/2addr v0, v7

    float-to-int v11, v0

    .line 1044
    int-to-float v0, v12

    add-float/2addr v0, v8

    float-to-int v12, v0

    .line 1026
    .end local v1    # "p2":Landroid/view/MotionEvent$PointerCoords;
    .end local v16    # "p1":Landroid/view/MotionEvent$PointerCoords;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_3b

    .line 1048
    .end local v15    # "i":I
    :cond_7a
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1049
    .restart local v0    # "p1":Landroid/view/MotionEvent$PointerCoords;
    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1050
    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1051
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1052
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1053
    add-int/lit8 v1, v4, 0x1

    aput-object v0, v13, v1

    .line 1055
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1056
    .restart local v1    # "p2":Landroid/view/MotionEvent$PointerCoords;
    iget v15, v3, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    iput v15, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1057
    iget v15, v3, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    iput v15, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1058
    const/high16 v15, 0x3f800000    # 1.0f

    iput v15, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1059
    iput v15, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1060
    add-int/lit8 v15, v4, 0x1

    aput-object v1, v14, v15

    .line 1062
    const/4 v15, 0x2

    new-array v15, v15, [[Landroid/view/MotionEvent$PointerCoords;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    move-object/from16 p5, v0

    move-object/from16 v0, p0

    .end local v0    # "p1":Landroid/view/MotionEvent$PointerCoords;
    .local p5, "p1":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {v0, v15}, Lcom/android/uiautomator/core/UiObject;->performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v15

    return v15
.end method

.method public pinchIn(II)Z
    .registers 14
    .param p1, "percent"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 967
    const/16 v0, 0x64

    if-gez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    if-le p1, v0, :cond_9

    goto :goto_a

    :cond_9
    move v0, p1

    :goto_a
    move p1, v0

    .line 968
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 970
    .local v0, "percentage":F
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 971
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_82

    .line 975
    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 976
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_7a

    .line 979
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 980
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 981
    .local v6, "startPoint1":Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 982
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 984
    .local v7, "startPoint2":Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 985
    .local v8, "endPoint1":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v9, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 987
    .local v9, "endPoint2":Landroid/graphics/Point;
    move-object v5, p0

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/uiautomator/core/UiObject;->performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v3

    return v3

    .line 977
    .end local v6    # "startPoint1":Landroid/graphics/Point;
    .end local v7    # "startPoint2":Landroid/graphics/Point;
    .end local v8    # "endPoint1":Landroid/graphics/Point;
    .end local v9    # "endPoint2":Landroid/graphics/Point;
    :cond_7a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Object width is too small for operation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 972
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_82
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public pinchOut(II)Z
    .registers 14
    .param p1, "percent"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 929
    const/16 v0, 0x64

    if-gez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    if-le p1, v0, :cond_9

    goto :goto_a

    :cond_9
    move v0, p1

    :goto_a
    move p1, v0

    .line 930
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 932
    .local v0, "percentage":F
    iget-object v1, p0, Lcom/android/uiautomator/core/UiObject;->mConfig:Lcom/android/uiautomator/core/Configurator;

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getWaitForSelectorTimeout()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 933
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_82

    .line 937
    invoke-direct {p0, v1}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 938
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_7a

    .line 942
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 943
    .local v6, "startPoint1":Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 946
    .local v7, "startPoint2":Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 947
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 948
    .local v8, "endPoint1":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 949
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v9, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 951
    .local v9, "endPoint2":Landroid/graphics/Point;
    move-object v5, p0

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/uiautomator/core/UiObject;->performTwoPointerGesture(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;I)Z

    move-result v3

    return v3

    .line 939
    .end local v6    # "startPoint1":Landroid/graphics/Point;
    .end local v7    # "startPoint2":Landroid/graphics/Point;
    .end local v8    # "endPoint1":Landroid/graphics/Point;
    .end local v9    # "endPoint2":Landroid/graphics/Point;
    :cond_7a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Object width is too small for operation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 934
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_82
    new-instance v2, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setText(Ljava/lang/String;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 601
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 602
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->clearTextField()V

    .line 603
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/InteractionController;->sendText(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public swipeDown(I)Z
    .registers 12
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 269
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 271
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_1a

    .line 272
    return v2

    .line 273
    :cond_1a
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v1, 0x5

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v1, -0x5

    .line 273
    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v1

    return v1
.end method

.method public swipeLeft(I)Z
    .registers 12
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 299
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_1a

    .line 300
    return v2

    .line 301
    :cond_1a
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v4

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v1, -0x5

    .line 302
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v1, 0x5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 301
    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v1

    return v1
.end method

.method public swipeRight(I)Z
    .registers 12
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 326
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_1a

    .line 327
    return v2

    .line 328
    :cond_1a
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v4

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v1, 0x5

    .line 329
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v1, -0x5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 328
    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v1

    return v1
.end method

.method public swipeUp(I)Z
    .registers 12
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 243
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_1a

    .line 244
    return v2

    .line 245
    :cond_1a
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiObject;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v1, -0x5

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v1, 0x5

    .line 245
    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIII)Z

    move-result v1

    return v1
.end method

.method public waitForExists(J)Z
    .registers 7
    .param p1, "timeout"    # J

    .line 854
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 855
    invoke-virtual {p0, p1, p2}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 856
    return v0

    .line 858
    :cond_14
    return v3
.end method

.method public waitUntilGone(J)Z
    .registers 13
    .param p1, "timeout"    # J

    .line 880
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 882
    .local v1, "startMills":J
    const-wide/16 v4, 0x0

    .line 883
    .local v4, "currentMills":J
    :cond_13
    :goto_13
    cmp-long v6, v4, p1

    if-gtz v6, :cond_30

    .line 884
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/uiautomator/core/UiObject;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    if-nez v8, :cond_20

    .line 885
    return v0

    .line 886
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v1

    .line 887
    cmp-long v6, p1, v6

    if-lez v6, :cond_13

    .line 888
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_13

    .line 890
    :cond_30
    return v3
.end method
