.class public Lcom/android/uiautomator/core/UiScrollable;
.super Lcom/android/uiautomator/core/UiCollection;
.source "UiScrollable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_SWIPE_DEADZONE_PCT:D = 0.1

.field private static final FLING_STEPS:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SCROLL_STEPS:I = 0x37

.field private static mMaxSearchSwipes:I


# instance fields
.field private mIsVerticalList:Z

.field private mSwipeDeadZonePercentage:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/android/uiautomator/core/UiScrollable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0x1e

    sput v0, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .registers 4
    .param p1, "container"    # Lcom/android/uiautomator/core/UiSelector;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiCollection;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    .line 48
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mSwipeDeadZonePercentage:D

    .line 61
    return-void
.end method


# virtual methods
.method public ensureFullyVisible(Lcom/android/uiautomator/core/UiObject;)Z
    .registers 9
    .param p1, "childObject"    # Lcom/android/uiautomator/core/UiObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 297
    .local v0, "actual":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 298
    .local v1, "visible":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1e

    .line 300
    return v4

    .line 302
    :cond_1e
    const/4 v2, 0x0

    .line 303
    .local v2, "shouldSwipeForward":Z
    iget-boolean v3, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_2e

    .line 306
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ne v3, v6, :cond_2b

    goto :goto_2c

    :cond_2b
    move v4, v5

    :goto_2c
    move v2, v4

    goto :goto_37

    .line 310
    :cond_2e
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ne v3, v6, :cond_35

    goto :goto_36

    :cond_35
    move v4, v5

    :goto_36
    move v2, v4

    .line 312
    :goto_37
    iget-boolean v3, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    const/16 v4, 0xa

    if-eqz v3, :cond_49

    .line 313
    if-eqz v2, :cond_44

    .line 314
    invoke-virtual {p0, v4}, Lcom/android/uiautomator/core/UiScrollable;->swipeUp(I)Z

    move-result v3

    return v3

    .line 316
    :cond_44
    invoke-virtual {p0, v4}, Lcom/android/uiautomator/core/UiScrollable;->swipeDown(I)Z

    move-result v3

    return v3

    .line 319
    :cond_49
    if-eqz v2, :cond_50

    .line 320
    invoke-virtual {p0, v4}, Lcom/android/uiautomator/core/UiScrollable;->swipeLeft(I)Z

    move-result v3

    return v3

    .line 322
    :cond_50
    invoke-virtual {p0, v4}, Lcom/android/uiautomator/core/UiScrollable;->swipeRight(I)Z

    move-result v3

    return v3
.end method

.method protected exists(Lcom/android/uiautomator/core/UiSelector;)Z
    .registers 3
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .line 94
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public flingBackward()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 462
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 463
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollBackward(I)Z

    move-result v0

    return v0
.end method

.method public flingForward()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 384
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward(I)Z

    move-result v0

    return v0
.end method

.method public flingToBeginning(I)Z
    .registers 5
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 579
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 580
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToBeginning(II)Z

    move-result v0

    return v0
.end method

.method public flingToEnd(I)Z
    .registers 5
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 630
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 631
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToEnd(II)Z

    move-result v0

    return v0
.end method

.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .registers 5
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/uiautomator/core/UiScrollable;->getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;

    move-result-object v0

    return-object v0
.end method

.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;
    .registers 7
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowScrollSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 143
    if-eqz p2, :cond_28

    .line 144
    if-eqz p3, :cond_23

    .line 145
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    .line 147
    :cond_23
    invoke-super {p0, p1, p2}, Lcom/android/uiautomator/core/UiCollection;->getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v0

    return-object v0

    .line 149
    :cond_28
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for description= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;
    .registers 6
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 168
    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/uiautomator/core/UiSelector;->instance(I)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 169
    .local v0, "patternSelector":Lcom/android/uiautomator/core/UiSelector;
    new-instance v1, Lcom/android/uiautomator/core/UiObject;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v1
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .registers 5
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/uiautomator/core/UiScrollable;->getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;

    move-result-object v0

    return-object v0
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;
    .registers 7
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowScrollSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 212
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 213
    if-eqz p2, :cond_28

    .line 214
    if-eqz p3, :cond_23

    .line 215
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    .line 217
    :cond_23
    invoke-super {p0, p1, p2}, Lcom/android/uiautomator/core/UiCollection;->getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v0

    return-object v0

    .line 219
    :cond_28
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for text= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxSearchSwipes()I
    .registers 2

    .line 367
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 368
    sget v0, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    return v0
.end method

.method public getSwipeDeadZonePercentage()D
    .registers 3

    .line 646
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 647
    iget-wide v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mSwipeDeadZonePercentage:D

    return-wide v0
.end method

.method public scrollBackward()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 478
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 479
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollBackward(I)Z

    move-result v0

    return v0
.end method

.method public scrollBackward(I)Z
    .registers 16
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 494
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 495
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollBackward() on selector = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/uiautomator/core/UiScrollable;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 497
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_8c

    .line 500
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 501
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 503
    const/4 v3, 0x0

    .line 504
    .local v3, "downX":I
    const/4 v4, 0x0

    .line 505
    .local v4, "downY":I
    const/4 v5, 0x0

    .line 506
    .local v5, "upX":I
    const/4 v6, 0x0

    .line 510
    .local v6, "upY":I
    iget-boolean v7, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    if-eqz v7, :cond_60

    .line 511
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 512
    .local v7, "swipeAreaAdjust":I
    const-string v8, "scrollToBegining() using vertical scroll"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 515
    .end local v3    # "downX":I
    .local v0, "downX":I
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    .line 516
    .end local v4    # "downY":I
    .local v3, "downY":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 517
    .end local v5    # "upX":I
    .local v4, "upX":I
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    .line 518
    .end local v6    # "upY":I
    .end local v7    # "swipeAreaAdjust":I
    .local v5, "upY":I
    goto :goto_7e

    .line 519
    .end local v0    # "downX":I
    .local v3, "downX":I
    .local v4, "downY":I
    .local v5, "upX":I
    .restart local v6    # "upY":I
    :cond_60
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 520
    .restart local v7    # "swipeAreaAdjust":I
    const-string v8, "scrollToBegining() using hotizontal scroll"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    .line 524
    .end local v3    # "downX":I
    .restart local v0    # "downX":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 525
    .end local v4    # "downY":I
    .local v3, "downY":I
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v7

    .line 526
    .end local v5    # "upX":I
    .local v4, "upX":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 528
    .end local v6    # "upY":I
    .end local v7    # "swipeAreaAdjust":I
    .local v5, "upY":I
    :goto_7e
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v8

    move v9, v0

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/uiautomator/core/InteractionController;->scrollSwipe(IIIII)Z

    move-result v6

    return v6

    .line 498
    .end local v0    # "downX":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "downY":I
    .end local v4    # "upX":I
    .end local v5    # "upY":I
    :cond_8c
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollDescriptionIntoView(Ljava/lang/String;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 233
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/UiSelector;->description(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v0

    return v0
.end method

.method public scrollForward()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 399
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 400
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward(I)Z

    move-result v0

    return v0
.end method

.method public scrollForward(I)Z
    .registers 16
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 415
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 416
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollForward() on selector = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiScrollable;->findAccessibilityNodeInfo(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 418
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_83

    .line 421
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 422
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, "downX":I
    const/4 v3, 0x0

    .line 426
    .local v3, "downY":I
    const/4 v4, 0x0

    .line 427
    .local v4, "upX":I
    const/4 v5, 0x0

    .line 431
    .local v5, "upY":I
    iget-boolean v6, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    if-eqz v6, :cond_5b

    .line 432
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 434
    .local v6, "swipeAreaAdjust":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 435
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v6

    .line 436
    .end local v3    # "downY":I
    .local v7, "downY":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 437
    .end local v4    # "upX":I
    .local v3, "upX":I
    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    .line 438
    .end local v5    # "upY":I
    .end local v6    # "swipeAreaAdjust":I
    .local v4, "upY":I
    goto :goto_75

    .line 439
    .end local v7    # "downY":I
    .local v3, "downY":I
    .local v4, "upX":I
    .restart local v5    # "upY":I
    :cond_5b
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSwipeDeadZonePercentage()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 442
    .restart local v6    # "swipeAreaAdjust":I
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v6

    .line 443
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 444
    .end local v3    # "downY":I
    .restart local v7    # "downY":I
    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    .line 445
    .end local v4    # "upX":I
    .local v3, "upX":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 447
    .end local v5    # "upY":I
    .end local v6    # "swipeAreaAdjust":I
    .local v4, "upY":I
    :goto_75
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getInteractionController()Lcom/android/uiautomator/core/InteractionController;

    move-result-object v8

    move v9, v2

    move v10, v7

    move v11, v3

    move v12, v4

    move v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/uiautomator/core/InteractionController;->scrollSwipe(IIIII)Z

    move-result v5

    return v5

    .line 419
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "downX":I
    .end local v3    # "upX":I
    .end local v4    # "upY":I
    .end local v7    # "downY":I
    :cond_83
    new-instance v1, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public scrollIntoView(Lcom/android/uiautomator/core/UiObject;)Z
    .registers 5
    .param p1, "obj"    # Lcom/android/uiautomator/core/UiObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiObject;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v0

    return v0
.end method

.method public scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z
    .registers 8
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    .line 263
    .local v1, "childSelector":Lcom/android/uiautomator/core/UiSelector;
    invoke-virtual {p0, v1}, Lcom/android/uiautomator/core/UiScrollable;->exists(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 264
    return v0

    .line 267
    :cond_18
    sget v3, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiScrollable;->scrollToBeginning(I)Z

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/uiautomator/core/UiScrollable;->exists(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 269
    return v0

    .line 271
    :cond_24
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_25
    sget v4, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    if-ge v3, v4, :cond_3a

    .line 272
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward()Z

    move-result v4

    .line 273
    .local v4, "scrolled":Z
    invoke-virtual {p0, v1}, Lcom/android/uiautomator/core/UiScrollable;->exists(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 274
    return v0

    .line 276
    :cond_34
    if-nez v4, :cond_37

    .line 277
    return v2

    .line 271
    .end local v4    # "scrolled":Z
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 281
    .end local v3    # "x":I
    :cond_3a
    return v2
.end method

.method public scrollTextIntoView(Ljava/lang/String;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 338
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z

    move-result v0

    return v0
.end method

.method public scrollToBeginning(I)Z
    .registers 5
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 564
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 565
    const/16 v0, 0x37

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToBeginning(II)Z

    move-result v0

    return v0
.end method

.method public scrollToBeginning(II)Z
    .registers 7
    .param p1, "maxSwipes"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 542
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 543
    sget-object v0, Lcom/android/uiautomator/core/UiScrollable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToBeginning() on selector = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiScrollable;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_31
    if-ge v0, p1, :cond_3d

    .line 546
    invoke-virtual {p0, p2}, Lcom/android/uiautomator/core/UiScrollable;->scrollBackward(I)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 547
    goto :goto_3d

    .line 545
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 550
    .end local v0    # "x":I
    :cond_3d
    :goto_3d
    return v2
.end method

.method public scrollToEnd(I)Z
    .registers 5
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 615
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 616
    const/16 v0, 0x37

    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/UiScrollable;->scrollToEnd(II)Z

    move-result v0

    return v0
.end method

.method public scrollToEnd(II)Z
    .registers 6
    .param p1, "maxSwipes"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 594
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 596
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_15
    if-ge v0, p1, :cond_21

    .line 597
    invoke-virtual {p0, p2}, Lcom/android/uiautomator/core/UiScrollable;->scrollForward(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 598
    goto :goto_21

    .line 596
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 601
    .end local v0    # "x":I
    :cond_21
    :goto_21
    return v2
.end method

.method public setAsHorizontalList()Lcom/android/uiautomator/core/UiScrollable;
    .registers 3

    .line 80
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 81
    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    .line 82
    return-object p0
.end method

.method public setAsVerticalList()Lcom/android/uiautomator/core/UiScrollable;
    .registers 2

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/uiautomator/core/UiScrollable;->mIsVerticalList:Z

    .line 71
    return-object p0
.end method

.method public setMaxSearchSwipes(I)Lcom/android/uiautomator/core/UiScrollable;
    .registers 5
    .param p1, "swipes"    # I

    .line 352
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 353
    sput p1, Lcom/android/uiautomator/core/UiScrollable;->mMaxSearchSwipes:I

    .line 354
    return-object p0
.end method

.method public setSwipeDeadZonePercentage(D)Lcom/android/uiautomator/core/UiScrollable;
    .registers 6
    .param p1, "swipeDeadZonePercentage"    # D

    .line 664
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 665
    iput-wide p1, p0, Lcom/android/uiautomator/core/UiScrollable;->mSwipeDeadZonePercentage:D

    .line 666
    return-object p0
.end method
