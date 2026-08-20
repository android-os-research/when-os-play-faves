.class public Landroid/widget/Editor$InsertionPointCursorController;
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
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private greylist-max-o mHandle:Landroid/widget/Editor$InsertionHandleView;

.field private blacklist mIsDraggingCursor:Z

.field private blacklist mIsTouchSnappedToHandleDuringDrag:Z

.field private blacklist mPrevLineDuringDrag:I

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreloadHandleDrawable(Landroid/widget/Editor$InsertionPointCursorController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$InsertionPointCursorController;->reloadHandleDrawable()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    .line 8130
    iput-object p1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist endCursorDrag(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8262
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    .line 8263
    iput-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsTouchSnappedToHandleDuringDrag:Z

    .line 8264
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    .line 8266
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionHandleView;->dismissMagnifier()V

    .line 8267
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 8269
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8270
    return-void
.end method

.method private blacklist getLineDuringDrag(Landroid/view/MotionEvent;)I
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8201
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 8202
    .local v0, "layout":Landroid/text/Layout;
    iget v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 8203
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v1

    return v1

    .line 8208
    :cond_1a
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    .line 8209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLocationOnScreen()[I

    move-result-object v3

    aget v3, v3, v2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    goto :goto_3e

    .line 8210
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    :goto_3e
    nop

    .line 8211
    .local v1, "fingerY":F
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionHandleView;->getIdealFingerToCursorOffset()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 8212
    .local v3, "cursorY":F
    iget-object v4, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget v5, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    invoke-virtual {v4, v0, v5, v3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v4

    .line 8213
    .local v4, "line":I
    iget-boolean v5, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsTouchSnappedToHandleDuringDrag:Z

    if-eqz v5, :cond_57

    .line 8215
    return v4

    .line 8217
    :cond_57
    iget v5, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    if-ge v4, v5, :cond_66

    .line 8221
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    .line 8222
    invoke-virtual {v2, v0, v5, v1}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v2

    .line 8221
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 8225
    :cond_66
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsTouchSnappedToHandleDuringDrag:Z

    .line 8231
    return v4
.end method

.method private blacklist isFromStylus(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 8172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 8173
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method private blacklist performCursorDrag(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8254
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->positionCursorDuringDrag(Landroid/view/MotionEvent;)V

    .line 8255
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 8256
    return-void
.end method

.method private blacklist positionCursorDuringDrag(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8177
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->getLineDuringDrag(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    .line 8178
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    .line 8179
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8180
    .local v1, "oldSelectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8181
    .local v2, "oldSelectionEnd":I
    if-ne v0, v1, :cond_2f

    if-ne v0, v2, :cond_2f

    .line 8182
    return-void

    .line 8184
    :cond_2f
    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8185
    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 8186
    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 8187
    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 8189
    :cond_56
    return-void
.end method

.method private blacklist reloadHandleDrawable()V
    .registers 4

    .line 8345
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-nez v0, :cond_5

    .line 8348
    return-void

    .line 8350
    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$InsertionHandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8351
    return-void
.end method

.method private blacklist startCursorDrag(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    .line 8239
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsTouchSnappedToHandleDuringDrag:Z

    .line 8240
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mPrevLineDuringDrag:I

    .line 8242
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8243
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 8245
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->positionCursorDuringDrag(Landroid/view/MotionEvent;)V

    .line 8247
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 8248
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 8249
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 8251
    return-void
.end method


# virtual methods
.method public greylist-max-o getHandle()Landroid/widget/Editor$InsertionHandleView;
    .registers 4

    .line 8337
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-nez v0, :cond_15

    .line 8338
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->loadHandleDrawables(Z)V

    .line 8339
    new-instance v0, Landroid/widget/Editor$InsertionHandleView;

    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v1, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$InsertionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    .line 8341
    :cond_15
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    return-object v0
.end method

.method public greylist-max-o hide()V
    .registers 2

    .line 8325
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_7

    .line 8326
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->hide()V

    .line 8328
    :cond_7
    return-void
.end method

.method public greylist-max-o invalidateHandle()V
    .registers 2

    .line 8372
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_7

    .line 8373
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->invalidate()V

    .line 8375
    :cond_7
    return-void
.end method

.method public greylist-max-o isActive()Z
    .registers 2

    .line 8368
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o isCursorBeingModified()Z
    .registers 2

    .line 8363
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public greylist-max-o onDetached()V
    .registers 3

    .line 8355
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8356
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8358
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionHandleView;->onDetached()V

    .line 8359
    :cond_14
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8141
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8142
    return-void

    .line 8144
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_a6

    goto/16 :goto_a4

    .line 8146
    :pswitch_1e
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 8147
    invoke-virtual {v0}, Landroid/widget/TextView;->isAutoHandwritingEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->isFromStylus(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 8148
    goto :goto_a4

    .line 8150
    :cond_39
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-eqz v0, :cond_41

    .line 8151
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->performCursorDrag(Landroid/view/MotionEvent;)V

    goto :goto_a4

    .line 8152
    :cond_41
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 8153
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 8154
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v0

    .line 8155
    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->isMovedEnoughForDrag()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v0

    .line 8156
    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getInitialDragDirectionXYRatio()F

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmCursorDragDirectionMinXYRatio(Landroid/widget/Editor;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_8d

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v0

    .line 8157
    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v0

    if-eqz v0, :cond_a4

    :cond_8d
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 8158
    invoke-virtual {v0}, Landroid/widget/TextView;->getSkipHoverCursorChange()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 8159
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->startCursorDrag(Landroid/view/MotionEvent;)V

    goto :goto_a4

    .line 8164
    :pswitch_9d
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-eqz v0, :cond_a4

    .line 8165
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;->endCursorDrag(Landroid/view/MotionEvent;)V

    .line 8169
    :cond_a4
    :goto_a4
    return-void

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_1e
        :pswitch_9d
    .end packed-switch
.end method

.method public whitelist onTouchModeChanged(Z)V
    .registers 2
    .param p1, "isInTouchMode"    # Z

    .line 8331
    if-nez p1, :cond_5

    .line 8332
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 8334
    :cond_5
    return-void
.end method

.method public greylist-max-o show()V
    .registers 7

    .line 8274
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUseCtxMenuInDesktopMode(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_14
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$misUniversalSwitchEnable(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 8275
    :cond_1c
    const-string v0, "Editor"

    const-string v1, "Action mode didn\'t start because Universal Switch / Desktop mode was enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8276
    return-void

    .line 8278
    :cond_24
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 8280
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->show()V

    .line 8283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    sub-long/2addr v0, v2

    .line 8285
    .local v0, "durationSinceCutOrCopy":J
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 8286
    iget-boolean v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-nez v2, :cond_59

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v2

    .line 8287
    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    .line 8288
    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$misCursorInsideEasyCorrectionSpan(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 8290
    :cond_59
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8296
    :cond_68
    iget-boolean v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-nez v2, :cond_b6

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v2

    .line 8297
    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v2

    if-nez v2, :cond_b6

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    .line 8298
    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$misCursorInsideEasyCorrectionSpan(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_b6

    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_b6

    .line 8300
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_b6

    .line 8301
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_a0

    .line 8302
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    new-instance v3, Landroid/widget/Editor$InsertionPointCursorController$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$InsertionPointCursorController$1;-><init>(Landroid/widget/Editor$InsertionPointCursorController;)V

    invoke-static {v2, v3}, Landroid/widget/Editor;->-$$Nest$fputmInsertionActionModeRunnable(Landroid/widget/Editor;Ljava/lang/Runnable;)V

    .line 8309
    :cond_a0
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    .line 8311
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    .line 8309
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8315
    :cond_b6
    iget-boolean v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->mIsDraggingCursor:Z

    if-nez v2, :cond_c1

    .line 8316
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 8319
    :cond_c1
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_ce

    .line 8320
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 8322
    :cond_ce
    return-void
.end method
