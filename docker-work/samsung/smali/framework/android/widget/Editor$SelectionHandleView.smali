.class public final Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final greylist-max-o mHandleType:I

.field private greylist-max-o mInWord:Z

.field private greylist-max-o mLanguageDirectionChanged:Z

.field private greylist-max-o mPrevX:F

.field private final greylist-max-o mTextViewEdgeSlop:F

.field private final greylist-max-o mTextViewLocation:[I

.field private greylist-max-o mTouchWordDelta:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .registers 12
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .line 7605
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 7606
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V

    .line 7591
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 7597
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 7602
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 7607
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 7608
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 7609
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 7610
    return-void
.end method

.method private greylist-max-o getHorizontal(Landroid/text/Layout;IZ)F
    .registers 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .line 7989
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 7990
    .local v0, "line":I
    const/4 v1, 0x0

    if-eqz p3, :cond_9

    move v2, p2

    goto :goto_f

    :cond_9
    add-int/lit8 v2, p2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7991
    .local v2, "offsetToCheck":I
    :goto_f
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    .line 7992
    .local v3, "isRtlChar":Z
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    const/4 v1, 0x1

    .line 7993
    .local v1, "isRtlParagraph":Z
    :cond_1b
    if-ne v3, v1, :cond_22

    .line 7994
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    goto :goto_26

    :cond_22
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    .line 7993
    :goto_26
    return v4
.end method

.method private greylist-max-o isStartHandle()Z
    .registers 2

    .line 7613
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o positionAndAdjustForCrossingHandles(IZ)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "fromTouchScreen"    # Z

    .line 7919
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 7920
    .local v0, "anotherHandleOffset":I
    :goto_1b
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_23

    if-ge p1, v0, :cond_2b

    .line 7921
    :cond_23
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-nez v1, :cond_45

    if-gt p1, v0, :cond_45

    .line 7925
    :cond_2b
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 7927
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_45

    if-ne p1, v0, :cond_45

    .line 7928
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Editor;->-$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 7958
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_45
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 7959
    return-void
.end method

.method private greylist-max-o positionNearEdgeOfScrollingView(FZ)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .line 7962
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 7964
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_39

    .line 7965
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 7966
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 7967
    .local v0, "rightEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    move v0, v1

    .line 7968
    .local v0, "nearEdge":Z
    goto :goto_53

    .line 7969
    .end local v0    # "nearEdge":Z
    :cond_39
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 7970
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    move v0, v1

    .line 7972
    .local v0, "nearEdge":Z
    :goto_53
    return v0
.end method


# virtual methods
.method public greylist-max-o getCurrentCursorOffset()I
    .registers 2

    .line 7632
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_1b
    return v0
.end method

.method public greylist-max-o getHorizontal(Landroid/text/Layout;I)F
    .registers 4
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 7985
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .line 7627
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x3

    goto :goto_9

    :cond_8
    const/4 v0, 0x5

    :goto_9
    return v0
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 7618
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_d

    .line 7619
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 7621
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .registers 2

    .line 8024
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSkipHoverCursorChange()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8025
    const/4 v0, -0x1

    return v0

    .line 8028
    :cond_e
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 8029
    const/4 v0, 0x1

    goto :goto_17

    .line 8030
    :cond_16
    const/4 v0, 0x2

    .line 8028
    :goto_17
    return v0
.end method

.method protected greylist-max-o getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .registers 16
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 7999
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v0

    .line 8000
    .local v0, "localX":F
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v2

    .line 8001
    .local v2, "primaryOffset":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 8002
    return v2

    .line 8004
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v4

    .line 8005
    .local v4, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v5

    .line 8006
    .local v5, "currentOffset":I
    sub-int v6, v2, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 8007
    .local v6, "primaryDiff":I
    sub-int v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 8008
    .local v7, "secondaryDiff":I
    if-ge v6, v7, :cond_2e

    .line 8009
    return v2

    .line 8010
    :cond_2e
    if-le v6, v7, :cond_31

    .line 8011
    return v4

    .line 8013
    :cond_31
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 8014
    move v8, v5

    goto :goto_3f

    :cond_39
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8015
    .local v8, "offsetToCheck":I
    :goto_3f
    invoke-virtual {p1, v8}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v9

    .line 8016
    .local v9, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v3

    .line 8017
    .local v1, "isRtlParagraph":Z
    :goto_4c
    if-ne v9, v1, :cond_50

    move v3, v2

    goto :goto_51

    :cond_50
    move v3, v4

    :goto_51
    return v3
.end method

.method protected greylist-max-o isAtRtlRun(Landroid/text/Layout;I)Z
    .registers 7
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 7978
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    move v1, v3

    :goto_1e
    if-ne v0, v1, :cond_22

    .line 7979
    move v0, p2

    goto :goto_28

    :cond_22
    add-int/lit8 v0, p2, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7980
    .local v0, "offsetToCheck":I
    :goto_28
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1
.end method

.method protected blacklist isScreenOut(IZ)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "atRtl"    # Z

    .line 8036
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 8037
    .local v0, "displayWidth":I
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 8041
    .local v1, "iconSize":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-ne v2, p2, :cond_20

    .line 8042
    move v2, p1

    .line 8043
    .local v2, "startX":I
    add-int v3, p1, v1

    .local v3, "endX":I
    goto :goto_23

    .line 8045
    .end local v2    # "startX":I
    .end local v3    # "endX":I
    :cond_20
    sub-int v2, p1, v1

    .line 8046
    .restart local v2    # "startX":I
    move v3, p1

    .line 8049
    .restart local v3    # "endX":I
    :goto_23
    if-ltz v2, :cond_2e

    if-ltz v3, :cond_2e

    if-gt v2, v0, :cond_2e

    if-le v3, v0, :cond_2c

    goto :goto_2e

    .line 8053
    :cond_2c
    const/4 v4, 0x0

    return v4

    .line 8050
    :cond_2e
    :goto_2e
    const/4 v4, 0x1

    return v4
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 7890
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 7891
    return v1

    .line 7893
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 7895
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    :pswitch_19
    goto :goto_23

    .line 7906
    :pswitch_1a
    goto :goto_23

    .line 7899
    :pswitch_1b
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7900
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 7902
    nop

    .line 7914
    :goto_23
    return v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method protected greylist-max-o positionAtCursorOffset(IZZ)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 7884
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 7885
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 7886
    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .registers 35
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    .line 7661
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 7662
    .local v3, "selectionStart":I
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 7663
    .local v4, "selectionEnd":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-ge v3, v4, :cond_22

    const/4 v8, 0x1

    goto :goto_23

    :cond_22
    const/4 v8, 0x0

    :goto_23
    if-ne v5, v8, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 7665
    .local v5, "isTwoWayStartHandle":Z
    :goto_28
    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mLastParentYOnScreen:I

    int-to-float v8, v8

    sub-float v8, p2, v8

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mFirstParentY:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 7666
    .local v8, "inWindowY":F
    iget-object v9, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 7667
    .local v9, "layout":Landroid/text/Layout;
    if-nez v9, :cond_4b

    .line 7670
    iget-object v6, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v1, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    invoke-direct {v0, v6, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 7672
    return-void

    .line 7675
    :cond_4b
    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5c

    .line 7676
    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v10

    iput v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 7679
    :cond_5c
    const/4 v10, 0x0

    .line 7686
    .local v10, "positionCursor":Z
    iget-object v12, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget v13, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v12, v9, v13, v8}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v12

    .line 7687
    .local v12, "currLine":I
    invoke-virtual {v0, v9, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v13

    .line 7699
    .local v13, "initialOffset":I
    invoke-virtual {v0, v9, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v14

    .line 7700
    .local v14, "offset":I
    iget-object v15, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15, v14}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v15

    .line 7701
    .local v15, "wordEnd":I
    iget-object v11, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v14}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v11

    .line 7703
    .local v11, "wordStart":I
    iget v7, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v7, v7, v18

    if-nez v7, :cond_83

    .line 7704
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 7707
    :cond_83
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v7

    .line 7708
    .local v7, "currentOffset":I
    invoke-virtual {v0, v9, v7}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v18

    .line 7709
    .local v18, "rtlAtCurrentOffset":Z
    invoke-virtual {v0, v9, v14}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v6

    .line 7710
    .local v6, "atRtl":Z
    invoke-virtual {v9, v14}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v19

    .line 7715
    .local v19, "isLvlBoundary":Z
    move/from16 v20, v3

    .end local v3    # "selectionStart":I
    .local v20, "selectionStart":I
    if-nez v19, :cond_2e6

    if-eqz v18, :cond_a4

    if-eqz v6, :cond_9c

    goto :goto_a4

    :cond_9c
    :goto_9c
    move/from16 v22, v4

    move/from16 v25, v8

    move/from16 v26, v10

    goto/16 :goto_2ec

    :cond_a4
    :goto_a4
    if-nez v18, :cond_a9

    if-eqz v6, :cond_a9

    goto :goto_9c

    .line 7722
    :cond_a9
    iget-boolean v3, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    if-eqz v3, :cond_b9

    if-nez v19, :cond_b9

    .line 7725
    invoke-direct {v0, v14, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 7726
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7727
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 7728
    return-void

    .line 7722
    :cond_b9
    const/4 v3, 0x0

    .line 7732
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    sub-float v3, v1, v3

    .line 7734
    .local v3, "xDiff":F
    if-eqz v5, :cond_ca

    .line 7735
    move/from16 v22, v4

    .end local v4    # "selectionEnd":I
    .local v22, "selectionEnd":I
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-ge v12, v4, :cond_c8

    const/4 v4, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v4, 0x0

    .local v4, "isExpanding":Z
    :goto_c9
    goto :goto_d3

    .line 7737
    .end local v22    # "selectionEnd":I
    .local v4, "selectionEnd":I
    :cond_ca
    move/from16 v22, v4

    .end local v4    # "selectionEnd":I
    .restart local v22    # "selectionEnd":I
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-le v12, v4, :cond_d2

    const/4 v4, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v4, 0x0

    .line 7740
    .local v4, "isExpanding":Z
    :goto_d3
    if-ne v6, v5, :cond_e3

    .line 7741
    const/16 v21, 0x0

    cmpl-float v23, v3, v21

    if-lez v23, :cond_de

    const/16 v23, 0x1

    goto :goto_e0

    :cond_de
    const/16 v23, 0x0

    :goto_e0
    or-int v4, v4, v23

    goto :goto_f0

    .line 7743
    :cond_e3
    const/16 v21, 0x0

    cmpg-float v23, v3, v21

    if-gez v23, :cond_ec

    const/16 v23, 0x1

    goto :goto_ee

    :cond_ec
    const/16 v23, 0x0

    :goto_ee
    or-int v4, v4, v23

    .line 7747
    :goto_f0
    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v23

    .line 7748
    .local v23, "currentLineBottom":I
    move/from16 v24, v3

    .end local v3    # "xDiff":F
    .local v24, "xDiff":F
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v9, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 7749
    .local v3, "previousLineBottom":I
    move/from16 v25, v8

    .end local v8    # "inWindowY":F
    .local v25, "inWindowY":F
    iget-object v8, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    move/from16 v26, v10

    const/4 v10, 0x1

    .end local v10    # "positionCursor":Z
    .local v26, "positionCursor":Z
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 7750
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v10

    add-int/2addr v8, v10

    .line 7751
    .local v8, "verticalOffset":I
    sub-int v10, v23, v3

    sub-int/2addr v10, v8

    .line 7753
    .local v10, "diff":I
    move/from16 v27, v3

    .end local v3    # "previousLineBottom":I
    .local v27, "previousLineBottom":I
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchToWindowOffsetX:F

    add-float/2addr v3, v1

    move/from16 v28, v8

    .end local v8    # "verticalOffset":I
    .local v28, "verticalOffset":I
    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mHotspotX:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v3, v8

    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mHorizontalOffset:F

    sub-float/2addr v3, v8

    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mLastParentXOnScreen:I

    int-to-float v8, v8

    add-float/2addr v3, v8

    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mLastParentX:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    float-to-int v3, v3

    .line 7757
    .local v3, "x_":I
    iget-boolean v8, v0, Landroid/widget/Editor$SelectionHandleView;->mIsVerticalScrolled:Z

    if-eqz v8, :cond_13f

    .line 7758
    sub-int v8, v23, v10

    move/from16 v29, v10

    .local v8, "y_":I
    goto :goto_150

    .line 7760
    .end local v8    # "y_":I
    :cond_13f
    iget v8, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchToWindowOffsetY:F

    add-float v8, p2, v8

    move/from16 v29, v10

    .end local v10    # "diff":I
    .local v29, "diff":I
    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchOffsetY:F

    sub-float/2addr v8, v10

    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mVerticalScrolledYOffset:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mVerticalOffset:F

    sub-float/2addr v8, v10

    float-to-int v8, v8

    .line 7764
    .restart local v8    # "y_":I
    :goto_150
    invoke-virtual {v0, v3, v8}, Landroid/widget/Editor$SelectionHandleView;->updatePositionDuringDragging(II)V

    .line 7767
    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v10

    if-eqz v10, :cond_1c5

    .line 7768
    invoke-direct {v0, v1, v6}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v10

    if-eqz v10, :cond_1c2

    .line 7769
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_17b

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    if-nez v10, :cond_178

    goto :goto_17b

    :cond_178
    move/from16 v16, v3

    goto :goto_194

    .line 7770
    :cond_17b
    :goto_17b
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_1bf

    iget-object v10, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 7771
    move/from16 v16, v3

    if-eqz v6, :cond_18d

    const/4 v3, -0x1

    goto :goto_18e

    :cond_18d
    const/4 v3, 0x1

    .end local v3    # "x_":I
    .local v16, "x_":I
    :goto_18e
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1c7

    .line 7778
    :goto_194
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    if-eqz v3, :cond_19c

    if-lt v14, v7, :cond_1a4

    .line 7779
    :cond_19c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    if-nez v3, :cond_1c7

    if-le v14, v7, :cond_1c7

    .line 7784
    :cond_1a4
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7785
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    if-ne v6, v3, :cond_1b4

    .line 7786
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v9, v3}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v3

    goto :goto_1ba

    .line 7787
    :cond_1b4
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v9, v3}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v3

    :goto_1ba
    nop

    .line 7788
    .local v3, "nextOffset":I
    invoke-direct {v0, v3, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 7789
    return-void

    .line 7770
    .end local v16    # "x_":I
    .local v3, "x_":I
    :cond_1bf
    move/from16 v16, v3

    .end local v3    # "x_":I
    .restart local v16    # "x_":I
    goto :goto_1c7

    .line 7768
    .end local v16    # "x_":I
    .restart local v3    # "x_":I
    :cond_1c2
    move/from16 v16, v3

    .end local v3    # "x_":I
    .restart local v16    # "x_":I
    goto :goto_1c7

    .line 7767
    .end local v16    # "x_":I
    .restart local v3    # "x_":I
    :cond_1c5
    move/from16 v16, v3

    .line 7793
    .end local v3    # "x_":I
    .restart local v16    # "x_":I
    :cond_1c7
    :goto_1c7
    if-eqz v4, :cond_25a

    .line 7796
    if-eqz v5, :cond_1cd

    move v3, v11

    goto :goto_1ce

    :cond_1cd
    move v3, v15

    .line 7797
    .local v3, "wordBoundary":I
    :goto_1ce
    iget-boolean v10, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    if-eqz v10, :cond_1db

    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eqz v5, :cond_1d9

    if-ge v12, v10, :cond_1e4

    goto :goto_1db

    :cond_1d9
    if-le v12, v10, :cond_1e4

    .line 7799
    :cond_1db
    :goto_1db
    invoke-virtual {v0, v9, v3}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v10

    if-ne v6, v10, :cond_1e4

    const/16 v17, 0x1

    goto :goto_1e6

    :cond_1e4
    const/16 v17, 0x0

    :goto_1e6
    move/from16 v10, v17

    .line 7800
    .local v10, "snapToWord":Z
    if-eqz v10, :cond_234

    .line 7804
    move/from16 v30, v4

    .end local v4    # "isExpanding":Z
    .local v30, "isExpanding":Z
    invoke-virtual {v9, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    if-eq v4, v12, :cond_1fe

    .line 7806
    if-eqz v5, :cond_1f9

    .line 7807
    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    goto :goto_1fd

    :cond_1f9
    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    :goto_1fd
    move v3, v4

    .line 7810
    :cond_1fe
    if-eqz v5, :cond_207

    .line 7811
    sub-int v4, v15, v3

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v15, v4

    goto :goto_20c

    .line 7812
    :cond_207
    sub-int v4, v3, v11

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v11

    :goto_20c
    nop

    .line 7814
    .local v4, "offsetThresholdToSnap":I
    if-eqz v5, :cond_21f

    if-le v14, v4, :cond_218

    move/from16 v17, v3

    .end local v3    # "wordBoundary":I
    .local v17, "wordBoundary":I
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v12, v3, :cond_221

    goto :goto_21a

    .end local v17    # "wordBoundary":I
    .restart local v3    # "wordBoundary":I
    :cond_218
    move/from16 v17, v3

    .line 7818
    .end local v3    # "wordBoundary":I
    .restart local v17    # "wordBoundary":I
    :goto_21a
    move v3, v11

    move v14, v3

    move/from16 v3, v17

    .end local v14    # "offset":I
    .local v3, "offset":I
    goto :goto_236

    .line 7814
    .end local v17    # "wordBoundary":I
    .local v3, "wordBoundary":I
    .restart local v14    # "offset":I
    :cond_21f
    move/from16 v17, v3

    .line 7820
    .end local v3    # "wordBoundary":I
    .restart local v17    # "wordBoundary":I
    :cond_221
    if-nez v5, :cond_22e

    if-ge v14, v4, :cond_229

    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v12, v3, :cond_22e

    .line 7824
    :cond_229
    move v3, v15

    move v14, v3

    move/from16 v3, v17

    .end local v14    # "offset":I
    .local v3, "offset":I
    goto :goto_236

    .line 7826
    .end local v3    # "offset":I
    .restart local v14    # "offset":I
    :cond_22e
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move v14, v3

    move/from16 v3, v17

    .end local v14    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_236

    .line 7800
    .end local v17    # "wordBoundary":I
    .end local v30    # "isExpanding":Z
    .local v3, "wordBoundary":I
    .local v4, "isExpanding":Z
    .restart local v14    # "offset":I
    :cond_234
    move/from16 v30, v4

    .line 7830
    .end local v4    # "isExpanding":Z
    .restart local v30    # "isExpanding":Z
    :goto_236
    if-eqz v5, :cond_23a

    if-lt v14, v13, :cond_23e

    :cond_23a
    if-nez v5, :cond_252

    if-le v14, v13, :cond_252

    .line 7832
    :cond_23e
    invoke-virtual {v0, v9, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 7833
    .local v4, "adjustedX":F
    move/from16 v17, v3

    .end local v3    # "wordBoundary":I
    .restart local v17    # "wordBoundary":I
    iget-object v3, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 7834
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v3

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7835
    .end local v4    # "adjustedX":F
    goto :goto_257

    .line 7830
    .end local v17    # "wordBoundary":I
    .restart local v3    # "wordBoundary":I
    :cond_252
    move/from16 v17, v3

    .line 7836
    .end local v3    # "wordBoundary":I
    .restart local v17    # "wordBoundary":I
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7838
    :goto_257
    const/4 v10, 0x1

    .line 7839
    .end local v17    # "wordBoundary":I
    .end local v26    # "positionCursor":Z
    .local v10, "positionCursor":Z
    goto/16 :goto_2dc

    .line 7840
    .end local v10    # "positionCursor":Z
    .end local v30    # "isExpanding":Z
    .local v4, "isExpanding":Z
    .restart local v26    # "positionCursor":Z
    :cond_25a
    move/from16 v30, v4

    .end local v4    # "isExpanding":Z
    .restart local v30    # "isExpanding":Z
    iget v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    sub-float v3, v1, v3

    .line 7841
    invoke-virtual {v0, v9, v12, v3}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v3

    .line 7843
    .local v3, "adjustedOffset":I
    if-eqz v5, :cond_275

    .line 7844
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-gt v3, v4, :cond_272

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v12, v4, :cond_26f

    goto :goto_272

    :cond_26f
    const/16 v17, 0x0

    goto :goto_283

    :cond_272
    :goto_272
    const/16 v17, 0x1

    goto :goto_283

    .line 7845
    :cond_275
    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v3, v4, :cond_281

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v12, v4, :cond_27e

    goto :goto_281

    :cond_27e
    const/16 v17, 0x0

    goto :goto_283

    :cond_281
    :goto_281
    const/16 v17, 0x1

    :goto_283
    move/from16 v4, v17

    .line 7846
    .local v4, "shrinking":Z
    if-eqz v4, :cond_2b9

    .line 7848
    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eq v12, v10, :cond_2b3

    .line 7851
    if-eqz v5, :cond_28f

    move v10, v11

    goto :goto_290

    :cond_28f
    move v10, v15

    .line 7852
    .end local v14    # "offset":I
    .local v10, "offset":I
    :goto_290
    if-eqz v5, :cond_294

    if-lt v10, v13, :cond_298

    :cond_294
    if-nez v5, :cond_2ac

    if-le v10, v13, :cond_2ac

    .line 7854
    :cond_298
    invoke-virtual {v0, v9, v10}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v14

    .line 7855
    .local v14, "adjustedX":F
    move/from16 v17, v4

    .end local v4    # "shrinking":Z
    .local v17, "shrinking":Z
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 7856
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v4

    sub-float/2addr v4, v14

    iput v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7857
    .end local v14    # "adjustedX":F
    goto :goto_2b1

    .line 7852
    .end local v17    # "shrinking":Z
    .restart local v4    # "shrinking":Z
    :cond_2ac
    move/from16 v17, v4

    .line 7858
    .end local v4    # "shrinking":Z
    .restart local v17    # "shrinking":Z
    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7863
    :goto_2b1
    move v14, v10

    goto :goto_2b7

    .line 7861
    .end local v10    # "offset":I
    .end local v17    # "shrinking":Z
    .restart local v4    # "shrinking":Z
    .local v14, "offset":I
    :cond_2b3
    move/from16 v17, v4

    .end local v4    # "shrinking":Z
    .restart local v17    # "shrinking":Z
    move v4, v3

    move v14, v4

    .line 7863
    :goto_2b7
    const/4 v10, 0x1

    .end local v26    # "positionCursor":Z
    .local v10, "positionCursor":Z
    goto :goto_2dc

    .line 7865
    .end local v10    # "positionCursor":Z
    .end local v17    # "shrinking":Z
    .restart local v4    # "shrinking":Z
    .restart local v26    # "positionCursor":Z
    :cond_2b9
    move/from16 v17, v4

    .end local v4    # "shrinking":Z
    .restart local v17    # "shrinking":Z
    if-eqz v5, :cond_2c1

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v3, v4, :cond_2c7

    :cond_2c1
    if-nez v5, :cond_2da

    iget v4, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-le v3, v4, :cond_2da

    .line 7869
    :cond_2c7
    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v4

    iget v10, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    .line 7870
    invoke-virtual {v0, v9, v10}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v10

    sub-float/2addr v4, v10

    iput v4, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7874
    .end local v3    # "adjustedOffset":I
    .end local v17    # "shrinking":Z
    :cond_2da
    move/from16 v10, v26

    .end local v26    # "positionCursor":Z
    .restart local v10    # "positionCursor":Z
    :goto_2dc
    if-eqz v10, :cond_2e3

    .line 7875
    iput v12, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 7876
    invoke-direct {v0, v14, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 7878
    :cond_2e3
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 7879
    return-void

    .line 7715
    .end local v16    # "x_":I
    .end local v22    # "selectionEnd":I
    .end local v23    # "currentLineBottom":I
    .end local v24    # "xDiff":F
    .end local v25    # "inWindowY":F
    .end local v27    # "previousLineBottom":I
    .end local v28    # "verticalOffset":I
    .end local v29    # "diff":I
    .end local v30    # "isExpanding":Z
    .local v4, "selectionEnd":I
    .local v8, "inWindowY":F
    :cond_2e6
    move/from16 v22, v4

    move/from16 v25, v8

    move/from16 v26, v10

    .line 7718
    .end local v4    # "selectionEnd":I
    .end local v8    # "inWindowY":F
    .end local v10    # "positionCursor":Z
    .restart local v22    # "selectionEnd":I
    .restart local v25    # "inWindowY":F
    .restart local v26    # "positionCursor":Z
    :goto_2ec
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 7719
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 7720
    invoke-direct {v0, v14, v2}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 7721
    return-void
.end method

.method protected greylist-max-o updateSelection(I)V
    .registers 4
    .param p1, "offset"    # I

    .line 7637
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 7641
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 7642
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 7641
    invoke-static {v0, p1, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    goto :goto_39

    .line 7648
    :cond_20
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 7649
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7648
    invoke-static {v0, v1, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 7652
    :goto_39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable(Z)V

    .line 7653
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 7654
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 7656
    :cond_4a
    return-void
.end method
