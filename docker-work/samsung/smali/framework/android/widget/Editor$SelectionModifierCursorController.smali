.class public Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final greylist-max-o DRAG_ACCELERATOR_MODE_CHARACTER:I = 0x1

.field private static final greylist-max-o DRAG_ACCELERATOR_MODE_INACTIVE:I = 0x0

.field private static final greylist-max-o DRAG_ACCELERATOR_MODE_PARAGRAPH:I = 0x3

.field private static final greylist-max-o DRAG_ACCELERATOR_MODE_WORD:I = 0x2


# instance fields
.field private greylist-max-o mDragAcceleratorMode:I

.field private greylist-max-o mEndHandle:Landroid/widget/Editor$SelectionHandleView;

.field private greylist-max-o mGestureStayedInTapRegion:Z

.field private greylist-max-o mHaventMovedEnoughToStartDrag:Z

.field private blacklist mIsExpanded:Z

.field private greylist-max-o mLineSelectionIsOn:I

.field private greylist-max-o mMaxTouchOffset:I

.field private greylist-max-o mMinTouchOffset:I

.field private greylist-max-o mStartHandle:Landroid/widget/Editor$SelectionHandleView;

.field private greylist-max-o mStartOffset:I

.field private greylist-max-o mSwitchedLines:Z

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEndHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitHandles(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreloadHandleDrawables(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->reloadHandleDrawables()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/Editor;

    .line 8413
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8390
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 8394
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 8396
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 8399
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 8410
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsExpanded:Z

    .line 8414
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 8415
    return-void
.end method

.method private greylist-max-o initHandles()V
    .registers 8

    .line 8427
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_18

    .line 8428
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v3, v2, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v4, v1, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    const v5, 0x1020536

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    .line 8432
    :cond_18
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_30

    .line 8433
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v3, v2, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v4, v1, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    const v5, 0x1020535

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    .line 8438
    :cond_30
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    .line 8439
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    .line 8441
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 8442
    return-void
.end method

.method private blacklist reloadHandleDrawables()V
    .registers 4

    .line 8445
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_5

    .line 8448
    return-void

    .line 8450
    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$SelectionHandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8451
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$SelectionHandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8452
    return-void
.end method

.method private greylist-max-o resetDragAcceleratorState()V
    .registers 4

    .line 8785
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 8786
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 8787
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 8788
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8789
    .local v0, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 8790
    .local v1, "selectionEnd":I
    if-ltz v0, :cond_33

    if-gez v1, :cond_21

    goto :goto_33

    .line 8792
    :cond_21
    if-le v0, v1, :cond_42

    .line 8796
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    goto :goto_42

    .line 8791
    :cond_33
    :goto_33
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 8800
    :cond_42
    :goto_42
    return-void
.end method

.method private greylist-max-o selectCurrentParagraphAndStartDrag()Z
    .registers 3

    .line 8654
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 8655
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8657
    :cond_17
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 8658
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mselectCurrentParagraph(Landroid/widget/Editor;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 8659
    const/4 v0, 0x0

    return v0

    .line 8661
    :cond_26
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 8662
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o updateCharacterBasedSelection(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8666
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 8667
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 8668
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    .line 8667
    invoke-direct {p0, v1, v0, v2}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelectionInternal(IIZ)V

    .line 8669
    return-void
.end method

.method private blacklist updateCharacterBasedSelectionAfterSelectWord(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8854
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 8855
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8856
    .local v1, "startOffset":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8857
    .local v2, "endOffset":I
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v3, v4}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v3

    .line 8858
    .local v3, "wordStart":I
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v4, v5}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v4

    .line 8860
    .local v4, "wordEnd":I
    if-gt v3, v0, :cond_3a

    if-ge v4, v0, :cond_3d

    .line 8861
    :cond_3a
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsExpanded:Z

    .line 8863
    :cond_3d
    iget-boolean v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsExpanded:Z

    if-nez v5, :cond_42

    return-void

    .line 8864
    :cond_42
    if-ne v1, v0, :cond_45

    return-void

    .line 8865
    :cond_45
    if-ge v0, v1, :cond_4c

    if-ge v0, v2, :cond_4c

    if-ne v2, v4, :cond_4c

    .line 8866
    move v1, v4

    .line 8868
    :cond_4c
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 8869
    return-void
.end method

.method private greylist-max-o updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 8764
    .local v0, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ge v1, v0, :cond_28

    .line 8765
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .line 8766
    .local v2, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v2, v3, :cond_1f

    iput v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8767
    :cond_1f
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v2, v3, :cond_25

    iput v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 8764
    .end local v2    # "offset":I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 8769
    .end local v1    # "index":I
    :cond_28
    return-void
.end method

.method private greylist-max-o updateParagraphBasedSelection(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8731
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 8733
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8734
    .local v1, "start":I
    iget v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8735
    .local v2, "end":I
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3, v1, v2}, Landroid/widget/Editor;->-$$Nest$mgetParagraphsRange(Landroid/widget/Editor;II)J

    move-result-wide v3

    .line 8736
    .local v3, "paragraphsRange":J
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 8737
    .local v5, "selectionStart":I
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 8738
    .local v6, "selectionEnd":I
    nop

    .line 8739
    const/16 v7, 0x1002

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    .line 8738
    invoke-direct {p0, v5, v6, v7}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelectionInternal(IIZ)V

    .line 8740
    return-void
.end method

.method private greylist-max-o updateSelection(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8625
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 8626
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 8642
    :pswitch_12
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateParagraphBasedSelection(Landroid/view/MotionEvent;)V

    goto :goto_3b

    .line 8639
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateWordBasedSelection(Landroid/view/MotionEvent;)V

    .line 8640
    goto :goto_3b

    .line 8629
    :pswitch_1a
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    .line 8630
    .local v0, "isMouse":Z
    if-eqz v0, :cond_38

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditorTouchState;->isDoubleTap()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mIsSelectedByLongClick:Z

    if-nez v1, :cond_38

    .line 8632
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateCharacterBasedSelection(Landroid/view/MotionEvent;)V

    goto :goto_3b

    .line 8634
    :cond_38
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateCharacterBasedSelectionAfterSelectWord(Landroid/view/MotionEvent;)V

    .line 8646
    .end local v0    # "isMouse":Z
    :cond_3b
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_16
        :pswitch_12
    .end packed-switch
.end method

.method private greylist-max-o updateSelectionInternal(IIZ)V
    .registers 7
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "fromTouchScreen"    # Z

    .line 8744
    if-eqz p3, :cond_24

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 8745
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ne v0, p1, :cond_22

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 8746
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-eq v0, p2, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 8749
    .local v0, "performHapticFeedback":Z
    :goto_25
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1, p2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 8751
    if-eqz v0, :cond_45

    .line 8754
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 8757
    :cond_45
    return-void
.end method

.method private greylist-max-o updateWordBasedSelection(Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8672
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v0, :cond_5

    .line 8673
    return-void

    .line 8675
    :cond_5
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    .line 8676
    .local v0, "isMouse":Z
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 8677
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8676
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 8678
    .local v1, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 8679
    .local v2, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 8681
    .local v3, "eventY":F
    if-eqz v0, :cond_2e

    .line 8683
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v4

    .local v4, "currLine":I
    goto :goto_61

    .line 8685
    .end local v4    # "currLine":I
    :cond_2e
    move v4, v3

    .line 8686
    .local v4, "y":F
    iget-boolean v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    if-eqz v5, :cond_44

    .line 8691
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    .line 8692
    .local v5, "touchSlop":I
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v6, :cond_40

    .line 8693
    invoke-virtual {v6}, Landroid/widget/Editor$SelectionHandleView;->getIdealVerticalOffset()F

    move-result v6

    goto :goto_41

    .line 8694
    :cond_40
    int-to-float v6, v5

    :goto_41
    nop

    .line 8695
    .local v6, "fingerOffset":F
    sub-float v4, v3, v6

    .line 8698
    .end local v5    # "touchSlop":I
    .end local v6    # "fingerOffset":F
    :cond_44
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    invoke-virtual {v5, v6, v7, v4}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v5

    .line 8700
    .local v5, "currLine":I
    iget-boolean v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    if-nez v6, :cond_60

    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    if-eq v5, v6, :cond_60

    .line 8705
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 8706
    return-void

    .line 8711
    .end local v4    # "y":F
    :cond_60
    move v4, v5

    .end local v5    # "currLine":I
    .local v4, "currLine":I
    :goto_61
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v5

    .line 8713
    .local v5, "offset":I
    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-ge v6, v5, :cond_7e

    .line 8715
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6, v5}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v5

    .line 8716
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v6, v7}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v6

    .local v6, "startOffset":I
    goto :goto_95

    .line 8719
    .end local v6    # "startOffset":I
    :cond_7e
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6, v5}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v5

    .line 8720
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v6, v7}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v6

    .line 8721
    .restart local v6    # "startOffset":I
    if-ne v6, v5, :cond_95

    .line 8722
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Landroid/widget/Editor;->-$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I

    move-result v5

    .line 8725
    :cond_95
    :goto_95
    iput v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 8726
    const/16 v7, 0x1002

    .line 8727
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    .line 8726
    invoke-direct {p0, v6, v5, v7}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelectionInternal(IIZ)V

    .line 8728
    return-void
.end method


# virtual methods
.method public greylist-max-o enterDrag(I)V
    .registers 5
    .param p1, "dragAcceleratorMode"    # I

    .line 8466
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 8467
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 8469
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v2

    .line 8470
    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v2

    .line 8469
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 8471
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 8473
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 8478
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8479
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 8480
    return-void
.end method

.method public greylist-max-o getMaxTouchOffset()I
    .registers 2

    .line 8776
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public greylist-max-o getMinTouchOffset()I
    .registers 2

    .line 8772
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public greylist-max-o hide()V
    .registers 2

    .line 8455
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 8456
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 8457
    :cond_e
    return-void
.end method

.method public greylist-max-o invalidateHandles()V
    .registers 2

    .line 8844
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_7

    .line 8845
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    .line 8847
    :cond_7
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_e

    .line 8848
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    .line 8850
    :cond_e
    return-void
.end method

.method public greylist-max-o isActive()Z
    .registers 2

    .line 8839
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_a
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_16

    .line 8840
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 8839
    :goto_17
    return v0
.end method

.method public greylist-max-o isCursorBeingModified()Z
    .registers 2

    .line 8811
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_17

    .line 8812
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 8811
    :goto_1a
    return v0
.end method

.method public greylist-max-o isDragAcceleratorActive()Z
    .registers 2

    .line 8819
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o isSelectionStartDragged()Z
    .registers 2

    .line 8806
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o onDetached()V
    .registers 3

    .line 8830
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8831
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8833
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    .line 8834
    :cond_14
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    .line 8835
    :cond_1b
    return-void
.end method

.method public greylist-max-o onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 8486
    .local v0, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 8487
    .local v1, "eventY":F
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    .line 8488
    .local v2, "isMouse":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_1ca

    :pswitch_17
    goto/16 :goto_1c9

    .line 8532
    :pswitch_19
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 8534
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_1c9

    .line 8539
    :pswitch_34
    iget-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v3, :cond_64

    .line 8540
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 8541
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 8540
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 8542
    .local v3, "viewConfig":Landroid/view/ViewConfiguration;
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v6

    .line 8543
    invoke-virtual {v6}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v7

    .line 8544
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v8

    .line 8542
    invoke-static {v6, v7, v0, v1, v8}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 8547
    .end local v3    # "viewConfig":Landroid/view/ViewConfiguration;
    :cond_64
    iget-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v3, :cond_75

    .line 8548
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isMovedEnoughForDrag()Z

    move-result v3

    xor-int/2addr v3, v5

    iput-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 8551
    :cond_75
    if-eqz v2, :cond_cc

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v3

    if-nez v3, :cond_cc

    .line 8552
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 8553
    .local v3, "offset":I
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->hasSelection()Z

    move-result v6

    if-eqz v6, :cond_ba

    iget-boolean v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v6, :cond_9b

    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-eq v6, v3, :cond_ba

    :cond_9b
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 8555
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-lt v3, v6, :cond_ba

    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 8556
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-gt v3, v6, :cond_ba

    .line 8557
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$mstartDragAndDrop(Landroid/widget/Editor;)V

    .line 8558
    goto/16 :goto_1c9

    .line 8561
    :cond_ba
    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-eq v6, v3, :cond_cc

    .line 8563
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 8564
    invoke-virtual {p0, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 8565
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iput-boolean v5, v6, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 8566
    iput-boolean v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 8570
    .end local v3    # "offset":I
    :cond_cc
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v3, :cond_d8

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 8572
    goto/16 :goto_1c9

    .line 8575
    :cond_d8
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmShowMagnifier(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 8576
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3, p1}, Landroid/widget/Editor;->-$$Nest$mupdateMagnifierForDrag(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 8579
    :cond_e5
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    .line 8587
    goto/16 :goto_1c9

    .line 8593
    :pswitch_ea
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v3, :cond_f1

    .line 8594
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionHandleView;->dismissMagnifier()V

    .line 8596
    :cond_f1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v3

    if-nez v3, :cond_f9

    .line 8597
    goto/16 :goto_1c9

    .line 8599
    :cond_f9
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    .line 8601
    iput-boolean v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsExpanded:Z

    .line 8605
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8608
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    .line 8610
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_121

    .line 8612
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    invoke-virtual {v3, v5}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    .line 8617
    :cond_121
    :pswitch_121
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3, v4}, Landroid/widget/Editor;->-$$Nest$fputmShowMagnifier(Landroid/widget/Editor;Z)V

    .line 8618
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$mdismissMagnifierForDrag(Landroid/widget/Editor;)V

    goto/16 :goto_1c9

    .line 8490
    :pswitch_12d
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$mextractedTextModeWillBeStarted(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 8492
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto/16 :goto_1c9

    .line 8495
    :cond_13a
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8500
    iget-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v3, :cond_199

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    .line 8501
    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isMultiTapInSameArea()Z

    move-result v3

    if-eqz v3, :cond_199

    invoke-static {}, Landroid/widget/Editor;->-$$Nest$sfgetmDisableDoubleTapTextSelection()Z

    move-result v3

    if-nez v3, :cond_199

    if-nez v2, :cond_174

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    .line 8503
    invoke-static {v3, v0, v1}, Landroid/widget/Editor;->-$$Nest$misPositionOnText(Landroid/widget/Editor;FF)Z

    move-result v3

    if-nez v3, :cond_174

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    .line 8504
    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v3

    if-eqz v3, :cond_199

    .line 8509
    :cond_174
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isDoubleTap()Z

    move-result v3

    if-eqz v3, :cond_186

    .line 8510
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$mselectCurrentWordAndStartDrag(Landroid/widget/Editor;)Z

    goto :goto_195

    .line 8511
    :cond_186
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isTripleClick()Z

    move-result v3

    if-eqz v3, :cond_195

    .line 8512
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->selectCurrentParagraphAndStartDrag()Z

    .line 8514
    :cond_195
    :goto_195
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iput-boolean v5, v3, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 8516
    :cond_199
    iput-boolean v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 8517
    iput-boolean v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 8520
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 8521
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v5

    .line 8522
    invoke-virtual {v5}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v5

    .line 8521
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 8622
    :cond_1c9
    :goto_1c9
    return-void

    :pswitch_data_1ca
    .packed-switch 0x0
        :pswitch_12d
        :pswitch_ea
        :pswitch_34
        :pswitch_121
        :pswitch_17
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public whitelist onTouchModeChanged(Z)V
    .registers 2
    .param p1, "isInTouchMode"    # Z

    .line 8823
    if-nez p1, :cond_5

    .line 8824
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 8826
    :cond_5
    return-void
.end method

.method public greylist-max-o resetTouchOffsets()V
    .registers 2

    .line 8780
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8781
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    .line 8782
    return-void
.end method

.method public greylist-max-o show()V
    .registers 3

    .line 8418
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8419
    return-void

    .line 8421
    :cond_d
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->loadHandleDrawables(Z)V

    .line 8422
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 8423
    return-void
.end method
