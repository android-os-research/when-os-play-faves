.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private blacklist mEndCurPosition:I

.field private blacklist mIsSelectableTextView:Z

.field private blacklist mMaxX:F

.field private blacklist mPressed:Z

.field private blacklist mStartCurPosition:I

.field private blacklist mStartX:F

.field private blacklist mStartY:F

.field private blacklist mThisView:Landroid/widget/TextView;

.field private blacklist oldEndPos:I

.field private blacklist selectRange:[I

.field final synthetic blacklist this$0:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEndCurPosition(Landroid/widget/TextView$StylusEventListener;)I
    .registers 1

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartCurPosition(Landroid/widget/TextView$StylusEventListener;)I
    .registers 1

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEndCurPosition(Landroid/widget/TextView$StylusEventListener;I)V
    .registers 2

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartCurPosition(Landroid/widget/TextView$StylusEventListener;I)V
    .registers 2

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 3
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 17699
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17687
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 17688
    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 17689
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17690
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17691
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 17692
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    .line 17694
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 17695
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 17696
    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 17697
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 17700
    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    .line 17701
    return-void
.end method


# virtual methods
.method public whitelist onStylusButtonEvent(Landroid/view/MotionEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 17704
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-nez v0, :cond_5

    .line 17705
    return-void

    .line 17708
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 17710
    .local v0, "action":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_47a

    iget-object v2, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-$$Nest$fgetmEnableMultiSelection(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_47a

    .line 17714
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 17715
    .local v2, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 17717
    .local v3, "rawY":F
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_33

    :cond_2f
    const/16 v6, 0xd3

    if-ne v0, v6, :cond_105

    .line 17720
    :cond_33
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmIsFindTargetView()Z

    move-result v6

    if-nez v6, :cond_86

    .line 17721
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-eq v6, v4, :cond_55

    .line 17722
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-nez v6, :cond_52

    .line 17723
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 17725
    :cond_52
    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    .line 17727
    :cond_55
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$mcanTextMultiSelection(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 17728
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/widget/TextView;->-$$Nest$sfputmCurTime(J)V

    .line 17729
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v6

    if-eq v6, v4, :cond_80

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v6

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_80

    .line 17730
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v6

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    .line 17733
    :cond_80
    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$sfputmLastHoveredViewId(I)V

    .line 17734
    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    .line 17736
    :cond_86
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-eq v6, v4, :cond_104

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-nez v4, :cond_91

    goto :goto_104

    .line 17739
    :cond_91
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v4

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    if-eq v4, v6, :cond_af

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v4

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v4, v6, :cond_af

    .line 17740
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 17741
    return-void

    .line 17744
    :cond_af
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v4

    if-eqz v4, :cond_c4

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v4

    if-nez v4, :cond_c4

    .line 17745
    return-void

    .line 17747
    :cond_c4
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_f4

    .line 17748
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hideCursorControllers()V

    .line 17749
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-static {v4, v6, v7, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v4

    if-eqz v4, :cond_f3

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-nez v4, :cond_114

    .line 17750
    :cond_f3
    return-void

    .line 17753
    :cond_f4
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-static {v4}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v4, v6, v7, v8}, Landroid/widget/TextView;->-$$Nest$mcheckPosOnText(Landroid/widget/TextView;III)Z

    move-result v4

    if-nez v4, :cond_114

    .line 17754
    return-void

    .line 17737
    :cond_104
    :goto_104
    return-void

    .line 17759
    :cond_105
    invoke-static {v1}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    .line 17760
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v6, :cond_479

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v6

    if-ne v6, v4, :cond_114

    goto/16 :goto_479

    .line 17765
    :cond_114
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v4

    .line 17766
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_121

    return-void

    .line 17768
    :cond_121
    const/4 v6, 0x0

    const-string v7, "TextView"

    sparse-switch v0, :sswitch_data_47c

    goto/16 :goto_478

    .line 18012
    :sswitch_129
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v6, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 18013
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 18015
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_14d

    .line 18016
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 18017
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 18018
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v7

    if-lez v7, :cond_148

    move v1, v5

    :cond_148
    invoke-static {v6, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto/16 :goto_478

    .line 18020
    :cond_14d
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    .line 18021
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v1, :cond_478

    .line 18022
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_478

    .line 17835
    :sswitch_15e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_21e

    .line 17836
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v6, :cond_478

    .line 17837
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v6

    .line 17838
    .local v6, "startPos":Landroid/graphics/Point;
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float v7, v2, v7

    .line 17839
    .local v7, "endX":F
    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    .line 17841
    .local v8, "endY":F
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v10, v2

    float-to-int v11, v3

    invoke-static {v9, v10, v11, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v9

    invoke-static {v9}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 17843
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_19d

    .line 17844
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 17847
    :cond_19d
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17848
    iget-boolean v10, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v10, :cond_1b8

    .line 17849
    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v1, v11, v1

    if-ge v9, v1, :cond_1b2

    .line 17850
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_1b8

    .line 17852
    :cond_1b2
    aget v1, v11, v5

    if-le v9, v1, :cond_1b8

    .line 17853
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17857
    :cond_1b8
    :goto_1b8
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v1, v9, :cond_1c8

    .line 17858
    if-nez v10, :cond_478

    .line 17859
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_478

    .line 17864
    :cond_1c8
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    if-eq v1, v9, :cond_21c

    if-ltz v9, :cond_21c

    .line 17865
    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 17866
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->-$$Nest$fputmHighlightPathBogus(Landroid/widget/TextView;Z)V

    .line 17867
    iget-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v1, :cond_205

    .line 17868
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_1e7

    .line 17869
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17871
    :cond_1e7
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_1f5

    .line 17872
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17874
    :cond_1f5
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v9, v10}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 17875
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto :goto_21c

    .line 17877
    :cond_205
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_212

    .line 17878
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 17880
    :cond_212
    move-object v1, v4

    check-cast v1, Landroid/text/Spannable;

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v5, v9}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 17883
    .end local v6    # "startPos":Landroid/graphics/Point;
    .end local v7    # "endX":F
    .end local v8    # "endY":F
    :cond_21c
    :goto_21c
    goto/16 :goto_478

    .line 17893
    :cond_21e
    :sswitch_21e
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    .line 17894
    .local v8, "startPos":Landroid/graphics/Point;
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    .line 17895
    .local v9, "endX":F
    iget v10, v8, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float v10, v3, v10

    .line 17897
    .local v10, "endY":F
    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_246

    .line 17898
    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 17900
    :cond_246
    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v11, v9, v10}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v11

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17901
    iget-boolean v12, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v12, :cond_261

    .line 17902
    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v13, v12, v1

    if-ge v11, v13, :cond_25b

    .line 17903
    iput v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_261

    .line 17904
    :cond_25b
    aget v12, v12, v5

    if-le v11, v12, :cond_261

    .line 17905
    iput v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17909
    :cond_261
    :goto_261
    const/4 v11, 0x0

    .line 17910
    .local v11, "isSameLine":Z
    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v12}, Landroid/widget/TextView;->-$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v12

    if-eqz v12, :cond_27e

    .line 17911
    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v12

    iget-object v13, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v13

    if-ne v12, v13, :cond_27c

    move v12, v5

    goto :goto_27d

    :cond_27c
    move v12, v1

    :goto_27d
    move v11, v12

    .line 17914
    :cond_27e
    iget-boolean v12, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v12, :cond_2c0

    if-eqz v11, :cond_2c0

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget-object v13, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v13}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2c0

    .line 17915
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_2a2

    .line 17916
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17917
    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    .line 17919
    :cond_2a2
    new-instance v5, Landroid/widget/TextView$StylusEventListener$1;

    invoke-direct {v5, p0}, Landroid/widget/TextView$StylusEventListener$1;-><init>(Landroid/widget/TextView$StylusEventListener;)V

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    .line 17949
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v12, v7

    invoke-virtual {v5, v6, v12, v13}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17951
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v5, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 17952
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 17953
    goto/16 :goto_478

    .line 17956
    :cond_2c0
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 17957
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v6, v12, :cond_2f0

    .line 17958
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 17959
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_2e9

    .line 17960
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 17961
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 17962
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v7

    if-lez v7, :cond_2e4

    move v1, v5

    :cond_2e4
    invoke-static {v6, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    goto/16 :goto_478

    .line 17964
    :cond_2e9
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    .line 17966
    goto/16 :goto_478

    .line 17969
    :cond_2f0
    if-le v6, v12, :cond_2f8

    .line 17970
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17971
    .local v6, "temp":I
    iput v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17972
    iput v6, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 17974
    .end local v6    # "temp":I
    :cond_2f8
    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v6, :cond_33f

    .line 17975
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v6, v12, v13}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 17976
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$mshowMultiSelectPopupWindow(Landroid/widget/TextView;)V

    .line 17980
    :try_start_30b
    new-instance v6, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    .line 17981
    .local v6, "infoExtractionManager":Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v13, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v4, v12, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->training(Ljava/lang/String;)V
    :try_end_325
    .catch Ljava/lang/IllegalStateException; {:try_start_30b .. :try_end_325} :catch_326

    .line 17984
    .end local v6    # "infoExtractionManager":Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
    goto :goto_32c

    .line 17982
    :catch_326
    move-exception v6

    .line 17983
    .local v6, "ie":Ljava/lang/IllegalStateException;
    const-string v12, "** skip SemInfoExtractionManager Service by IllegalStateException **"

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17985
    .end local v6    # "ie":Ljava/lang/IllegalStateException;
    :goto_32c
    const-string v6, "Pen up with side button! : end text selection"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17988
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    .line 17990
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6, v5}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    .line 17991
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    goto :goto_389

    .line 17992
    :cond_33f
    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v5, :cond_389

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v5, :cond_389

    .line 17993
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v5, :cond_389

    .line 17994
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v7, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v5, v6, v7}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 17995
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    if-eqz v5, :cond_370

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    iget-boolean v5, v5, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v5, :cond_370

    .line 17996
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 17998
    :cond_370
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    if-eqz v5, :cond_389

    .line 17999
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    .line 18000
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v5

    iput-boolean v1, v5, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 18005
    :cond_389
    :goto_389
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v5, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 18006
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 18007
    goto/16 :goto_478

    .line 17772
    .end local v8    # "startPos":Landroid/graphics/Point;
    .end local v9    # "endX":F
    .end local v10    # "endY":F
    .end local v11    # "isSameLine":Z
    :sswitch_391
    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v8, :cond_397

    goto/16 :goto_478

    .line 17774
    :cond_397
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-$$Nest$mhideMultiSelectPopupWindow(Landroid/widget/TextView;)V

    .line 17775
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v8

    if-nez v8, :cond_3ad

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_3ab

    goto :goto_3ad

    :cond_3ab
    move v8, v1

    goto :goto_3ae

    :cond_3ad
    :goto_3ad
    move v8, v5

    :goto_3ae
    iput-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 17777
    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v8, v9}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    .line 17778
    .restart local v8    # "startPos":Landroid/graphics/Point;
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 17779
    iget v9, v8, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float v9, v3, v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 17780
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 17782
    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {v10, v11, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17783
    if-ltz v9, :cond_44d

    .line 17784
    sget-boolean v9, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v9, :cond_443

    iget-boolean v9, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v9, :cond_443

    .line 17786
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v9

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastPenDownTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_40f

    .line 17787
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_401

    .line 17788
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17789
    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    .line 17791
    :cond_401
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 17792
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 17793
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    .line 17794
    goto :goto_478

    .line 17797
    :cond_40f
    invoke-static {v5}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 17799
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v6

    .line 17800
    .local v6, "flag":Z
    if-nez v6, :cond_426

    .line 17801
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aput v1, v9, v1

    .line 17802
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    aput v10, v9, v5

    .line 17804
    :cond_426
    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v11, v10, v1

    if-ge v9, v11, :cond_431

    .line 17805
    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_437

    .line 17807
    :cond_431
    aget v10, v10, v5

    if-le v9, v10, :cond_437

    .line 17808
    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 17811
    :cond_437
    :goto_437
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    .line 17812
    const-string v9, "Pen down with side button! : start text selection"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17814
    .end local v6    # "flag":Z
    :cond_443
    iget v6, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput v6, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 17815
    iput-boolean v5, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 17816
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v5, v6, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 17818
    :cond_44d
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-eqz v5, :cond_474

    .line 17819
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v5

    if-lez v5, :cond_474

    .line 17820
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 17821
    .local v5, "oldStart":I
    move-object v6, v4

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 17823
    .local v6, "oldEnd":I
    iget v7, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-lt v7, v5, :cond_46e

    if-le v7, v6, :cond_474

    .line 17824
    :cond_46e
    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v5, v6}, Landroid/text/MultiSelection;->addMultiSelection(Landroid/text/Spannable;II)V

    .line 17829
    .end local v5    # "oldStart":I
    .end local v6    # "oldEnd":I
    :cond_474
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 17830
    nop

    .line 18027
    .end local v8    # "startPos":Landroid/graphics/Point;
    :cond_478
    :goto_478
    return-void

    .line 17761
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_479
    :goto_479
    return-void

    .line 17711
    .end local v2    # "rawX":F
    .end local v3    # "rawY":F
    :cond_47a
    :goto_47a
    return-void

    nop

    :sswitch_data_47c
    .sparse-switch
        0x0 -> :sswitch_391
        0x1 -> :sswitch_21e
        0x2 -> :sswitch_15e
        0x3 -> :sswitch_129
        0xd3 -> :sswitch_391
        0xd4 -> :sswitch_21e
        0xd5 -> :sswitch_15e
        0xd6 -> :sswitch_129
    .end sparse-switch
.end method
