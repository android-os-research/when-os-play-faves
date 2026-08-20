.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final greylist-max-o MOVE_DOWN_BOUND:I = 0x3

.field private static final greylist-max-o MOVE_DOWN_POS:I = 0x1

.field private static final greylist-max-o MOVE_OFFSET:I = 0x5

.field private static final greylist-max-o MOVE_UP_BOUND:I = 0x4

.field private static final greylist-max-o MOVE_UP_POS:I = 0x2

.field private static final greylist-max-o SCROLL_DURATION:I = 0xc8


# instance fields
.field private greylist-max-o mBoundPos:I

.field private final greylist-max-o mExtraScroll:I

.field private greylist-max-o mLastSeenPos:I

.field private greylist-max-o mMode:I

.field private greylist-max-o mOffsetFromTop:I

.field private greylist-max-o mScrollDuration:I

.field private blacklist mStoredFirstPosition:I

.field private greylist-max-o mTargetPos:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 8298
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    .line 8299
    # getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 8300
    return-void
.end method

.method private greylist-max-o scrollToVisible(III)V
    .registers 21
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .line 8495
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8496
    .local v3, "firstPos":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 8497
    .local v4, "childCount":I
    add-int v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    .line 8498
    .local v5, "lastPos":I
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 8499
    .local v6, "paddedTop":I
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    .line 8501
    .local v7, "paddedBottom":I
    if-lt v1, v3, :cond_2b

    if-le v1, v5, :cond_5e

    .line 8502
    :cond_2b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scrollToVisible called with targetPos "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not visible ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AbsListView"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8505
    :cond_5e
    if-lt v2, v3, :cond_62

    if-le v2, v5, :cond_63

    .line 8507
    :cond_62
    const/4 v2, -0x1

    .line 8510
    .end local p2    # "boundPos":I
    .local v2, "boundPos":I
    :cond_63
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v9, v1, v3

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8511
    .local v8, "targetChild":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 8512
    .local v9, "targetTop":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 8513
    .local v10, "targetBottom":I
    const/4 v11, 0x0

    .line 8515
    .local v11, "scrollBy":I
    if-le v10, v7, :cond_78

    .line 8516
    sub-int v11, v10, v7

    .line 8518
    :cond_78
    if-ge v9, v6, :cond_7c

    .line 8519
    sub-int v11, v9, v6

    .line 8522
    :cond_7c
    if-nez v11, :cond_99

    .line 8523
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v12}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result v12

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v13

    if-ne v12, v13, :cond_98

    .line 8524
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I

    move-result v13

    invoke-static {v12, v13}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    .line 8525
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v12}, Landroid/widget/AbsListView;->-$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/AbsListView;)V

    .line 8527
    :cond_98
    return-void

    .line 8530
    :cond_99
    if-ltz v2, :cond_cf

    .line 8531
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v13, v2, v3

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 8532
    .local v12, "boundChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 8533
    .local v13, "boundTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 8534
    .local v14, "boundBottom":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 8536
    .local v15, "absScroll":I
    if-gez v11, :cond_bf

    add-int v1, v14, v15

    if-le v1, v7, :cond_bf

    .line 8538
    sub-int v1, v14, v7

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "boundPos":I
    .local v16, "boundPos":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_d1

    .line 8536
    .end local v16    # "boundPos":I
    .restart local v2    # "boundPos":I
    :cond_bf
    move/from16 v16, v2

    .line 8539
    .end local v2    # "boundPos":I
    .restart local v16    # "boundPos":I
    if-lez v11, :cond_d1

    sub-int v1, v13, v15

    if-ge v1, v6, :cond_d1

    .line 8541
    sub-int v1, v13, v6

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_d1

    .line 8530
    .end local v12    # "boundChild":Landroid/view/View;
    .end local v13    # "boundTop":I
    .end local v14    # "boundBottom":I
    .end local v15    # "absScroll":I
    .end local v16    # "boundPos":I
    .restart local v2    # "boundPos":I
    :cond_cf
    move/from16 v16, v2

    .line 8545
    .end local v2    # "boundPos":I
    .restart local v16    # "boundPos":I
    :cond_d1
    :goto_d1
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v2, p3

    invoke-virtual {v1, v11, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 8546
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 23

    .line 8555
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 8556
    .local v1, "listHeight":I
    iget-object v2, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8558
    .local v2, "firstPos":I
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_2e6

    goto/16 :goto_2e5

    .line 8709
    :pswitch_15
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8711
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 8713
    .local v3, "childCount":I
    if-gtz v3, :cond_20

    .line 8714
    return-void

    .line 8717
    :cond_20
    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8718
    .local v6, "position":I
    add-int v7, v2, v3

    sub-int/2addr v7, v5

    .line 8722
    .local v7, "lastPos":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8723
    .local v8, "firstChild":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 8724
    .local v9, "firstChildHeight":I
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 8725
    .local v10, "lastChild":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 8726
    .local v11, "lastChildHeight":I
    int-to-float v12, v9

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v12, :cond_45

    move v12, v14

    goto :goto_4d

    .line 8727
    :cond_45
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v9

    int-to-float v12, v12

    int-to-float v15, v9

    div-float/2addr v12, v15

    :goto_4d
    nop

    .line 8728
    .local v12, "firstPositionVisiblePart":F
    int-to-float v15, v11

    cmpl-float v13, v15, v13

    if-nez v13, :cond_55

    move v13, v14

    goto :goto_64

    .line 8730
    :cond_55
    iget-object v13, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 8729
    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    int-to-float v15, v11

    div-float/2addr v13, v15

    :goto_64
    nop

    .line 8732
    .local v13, "lastPositionVisiblePart":F
    const/4 v15, 0x0

    .line 8733
    .local v15, "viewTravelCount":F
    if-ge v6, v2, :cond_72

    .line 8734
    sub-int v4, v2, v6

    int-to-float v4, v4

    sub-float v17, v14, v12

    add-float v4, v4, v17

    add-float v15, v4, v14

    goto :goto_7b

    .line 8735
    :cond_72
    if-le v6, v7, :cond_7b

    .line 8736
    sub-int v4, v6, v7

    int-to-float v4, v4

    sub-float v17, v14, v13

    add-float v15, v4, v17

    .line 8740
    :cond_7b
    :goto_7b
    int-to-float v4, v3

    div-float v4, v15, v4

    .line 8742
    .local v4, "screenTravelCount":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 8743
    .local v5, "modifier":F
    if-ge v6, v2, :cond_aa

    .line 8744
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    .line 8745
    .local v14, "distance":I
    move/from16 v18, v3

    .end local v3    # "childCount":I
    .local v18, "childCount":I
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 8746
    .local v3, "duration":I
    move/from16 v19, v4

    .end local v4    # "screenTravelCount":F
    .local v19, "screenTravelCount":F
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v20, v8

    const/4 v8, 0x1

    .end local v8    # "firstChild":Landroid/view/View;
    .local v20, "firstChild":Landroid/view/View;
    invoke-virtual {v4, v14, v3, v8, v8}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8747
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8748
    .end local v3    # "duration":I
    .end local v14    # "distance":I
    goto/16 :goto_2e5

    .end local v18    # "childCount":I
    .end local v19    # "screenTravelCount":F
    .end local v20    # "firstChild":Landroid/view/View;
    .local v3, "childCount":I
    .restart local v4    # "screenTravelCount":F
    .restart local v8    # "firstChild":Landroid/view/View;
    :cond_aa
    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v8

    .end local v3    # "childCount":I
    .end local v4    # "screenTravelCount":F
    .end local v8    # "firstChild":Landroid/view/View;
    .restart local v18    # "childCount":I
    .restart local v19    # "screenTravelCount":F
    .restart local v20    # "firstChild":Landroid/view/View;
    if-le v6, v7, :cond_cd

    .line 8749
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 8750
    .local v3, "distance":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 8751
    .local v4, "duration":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x1

    invoke-virtual {v8, v3, v4, v14, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8752
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8753
    .end local v3    # "distance":I
    .end local v4    # "duration":I
    goto/16 :goto_2e5

    .line 8755
    :cond_cd
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v4, v6, v2

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 8756
    .local v3, "targetTop":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    sub-int v4, v3, v4

    .line 8757
    .local v4, "distance":I
    iget v8, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v8, v8

    .line 8758
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    move/from16 v21, v3

    .end local v3    # "targetTop":I
    .local v21, "targetTop":I
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v14, v3

    mul-float/2addr v8, v14

    float-to-int v3, v8

    .line 8759
    .local v3, "duration":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v16, v5

    const/4 v5, 0x1

    const/4 v14, 0x0

    .end local v5    # "modifier":F
    .local v16, "modifier":F
    invoke-virtual {v8, v4, v3, v5, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8761
    .end local v3    # "duration":I
    .end local v4    # "distance":I
    .end local v21    # "targetTop":I
    goto/16 :goto_2e5

    .line 8666
    .end local v6    # "position":I
    .end local v7    # "lastPos":I
    .end local v9    # "firstChildHeight":I
    .end local v10    # "lastChild":Landroid/view/View;
    .end local v11    # "lastChildHeight":I
    .end local v12    # "firstPositionVisiblePart":F
    .end local v13    # "lastPositionVisiblePart":F
    .end local v15    # "viewTravelCount":F
    .end local v16    # "modifier":F
    .end local v18    # "childCount":I
    .end local v19    # "screenTravelCount":F
    .end local v20    # "firstChild":Landroid/view/View;
    :pswitch_fc
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    .line 8667
    .local v3, "lastViewIndex":I
    if-gez v3, :cond_107

    .line 8668
    return-void

    .line 8670
    :cond_107
    add-int v4, v2, v3

    .line 8672
    .local v4, "lastPos":I
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v4, v5, :cond_113

    .line 8674
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8675
    return-void

    .line 8678
    :cond_113
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 8679
    .local v5, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 8680
    .local v6, "lastViewHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 8681
    .local v7, "lastViewTop":I
    sub-int v8, v1, v7

    .line 8682
    .local v8, "lastViewPixelsShowing":I
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 8683
    .local v9, "extraScroll":I
    iput v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8684
    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-le v4, v10, :cond_147

    .line 8685
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v11, v8, v9

    neg-int v11, v11

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13, v13}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8687
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2e5

    .line 8689
    :cond_147
    sub-int v10, v1, v9

    .line 8690
    .local v10, "bottom":I
    add-int v11, v7, v6

    .line 8691
    .local v11, "lastViewBottom":I
    if-le v10, v11, :cond_15c

    .line 8692
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v13, v10, v11

    neg-int v13, v13

    iget v14, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v16, v3

    const/4 v3, 0x1

    const/4 v15, 0x0

    .end local v3    # "lastViewIndex":I
    .local v16, "lastViewIndex":I
    invoke-virtual {v12, v13, v14, v3, v15}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto :goto_164

    .line 8694
    .end local v16    # "lastViewIndex":I
    .restart local v3    # "lastViewIndex":I
    :cond_15c
    move/from16 v16, v3

    const/4 v15, 0x0

    .end local v3    # "lastViewIndex":I
    .restart local v16    # "lastViewIndex":I
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v15}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8697
    .end local v10    # "bottom":I
    .end local v11    # "lastViewBottom":I
    :goto_164
    goto/16 :goto_2e5

    .line 8592
    .end local v4    # "lastPos":I
    .end local v5    # "lastView":Landroid/view/View;
    .end local v6    # "lastViewHeight":I
    .end local v7    # "lastViewTop":I
    .end local v8    # "lastViewPixelsShowing":I
    .end local v9    # "extraScroll":I
    .end local v16    # "lastViewIndex":I
    :pswitch_166
    const/4 v3, 0x1

    .line 8593
    .local v3, "nextViewIndex":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 8595
    .local v4, "childCount":I
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-eq v2, v5, :cond_1d9

    const/4 v5, 0x1

    if-le v4, v5, :cond_1d9

    add-int v5, v2, v4

    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v5, v6, :cond_17e

    const/4 v13, 0x0

    goto :goto_1da

    .line 8600
    :cond_17e
    add-int/lit8 v5, v2, 0x1

    .line 8602
    .local v5, "nextPos":I
    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v5, v6, :cond_18a

    .line 8604
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8605
    return-void

    .line 8608
    :cond_18a
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8609
    .local v6, "nextView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 8610
    .local v7, "nextViewHeight":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    .line 8611
    .local v8, "nextViewTop":I
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 8612
    .restart local v9    # "extraScroll":I
    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-ge v5, v10, :cond_1c2

    .line 8613
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int v11, v7, v8

    sub-int/2addr v11, v9

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13, v13}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8616
    iput v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8618
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2e5

    .line 8620
    :cond_1c2
    if-le v8, v9, :cond_1d1

    .line 8621
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v11, v8, v9

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v14, v13}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_2e5

    .line 8623
    :cond_1d1
    const/4 v13, 0x0

    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v13}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8626
    goto/16 :goto_2e5

    .line 8595
    .end local v5    # "nextPos":I
    .end local v6    # "nextView":Landroid/view/View;
    .end local v7    # "nextViewHeight":I
    .end local v8    # "nextViewTop":I
    .end local v9    # "extraScroll":I
    :cond_1d9
    const/4 v13, 0x0

    .line 8597
    :goto_1da
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v13}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8598
    return-void

    .line 8630
    .end local v3    # "nextViewIndex":I
    .end local v4    # "childCount":I
    :pswitch_1e0
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v2, v3, :cond_20c

    .line 8632
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-$$Nest$msemIsSupportGotoTop(Landroid/widget/AbsListView;)Z

    move-result v3

    if-eqz v3, :cond_204

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemCanGoFuther(Landroid/widget/AbsListView;)Z

    move-result v3

    if-eqz v3, :cond_204

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v3, :cond_204

    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mStoredFirstPosition:I

    if-ne v3, v2, :cond_204

    .line 8634
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 8636
    :cond_204
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mStoredFirstPosition:I

    .line 8639
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8640
    return-void

    .line 8643
    :cond_20c
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8644
    .local v3, "firstView":Landroid/view/View;
    if-nez v3, :cond_216

    .line 8645
    return-void

    .line 8647
    :cond_216
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 8648
    .local v4, "firstViewTop":I
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDivier(Landroid/widget/AbsListView;)Z

    move-result v5

    if-eqz v5, :cond_229

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDividerHeight(Landroid/widget/AbsListView;)I

    move-result v5

    goto :goto_22a

    :cond_229
    move v5, v14

    .line 8649
    .local v5, "dividerHeight":I
    :goto_22a
    if-lez v2, :cond_23c

    .line 8650
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iget v7, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_242

    :cond_23c
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 8652
    .local v6, "extraScroll":I
    :goto_242
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v8, v4, v6

    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v10, :cond_24d

    const/4 v14, 0x1

    :cond_24d
    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8655
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8657
    iget v7, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v7, :cond_25e

    .line 8658
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2e5

    .line 8659
    :cond_25e
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v7}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I

    move-result v8

    if-ne v7, v8, :cond_2e5

    .line 8660
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v8

    invoke-static {v7, v8}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    goto/16 :goto_2e5

    .line 8560
    .end local v3    # "firstView":Landroid/view/View;
    .end local v4    # "firstViewTop":I
    .end local v5    # "dividerHeight":I
    .end local v6    # "extraScroll":I
    :pswitch_275
    move v14, v4

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 8561
    .local v3, "lastViewIndex":I
    add-int v4, v2, v3

    .line 8563
    .local v4, "lastPos":I
    if-gez v3, :cond_283

    .line 8564
    return-void

    .line 8567
    :cond_283
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v4, v5, :cond_28d

    .line 8569
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8570
    return-void

    .line 8573
    :cond_28d
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 8574
    .local v5, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 8575
    .local v6, "lastViewHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 8576
    .local v7, "lastViewTop":I
    sub-int v8, v1, v7

    .line 8577
    .local v8, "lastViewPixelsShowing":I
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDivier(Landroid/widget/AbsListView;)Z

    move-result v9

    if-eqz v9, :cond_2ac

    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDividerHeight(Landroid/widget/AbsListView;)I

    move-result v9

    goto :goto_2ad

    :cond_2ac
    move v9, v14

    .line 8578
    .local v9, "dividerHeight":I
    :goto_2ad
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v4, v10, :cond_2c4

    .line 8579
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v9

    add-int/2addr v10, v11

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_2ca

    :cond_2c4
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 8581
    .local v10, "extraScroll":I
    :goto_2ca
    sub-int v11, v6, v8

    add-int/2addr v11, v10

    .line 8582
    .local v11, "scrollBy":I
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v13, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v15, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v4, v15, :cond_2d6

    const/4 v14, 0x1

    :cond_2d6
    const/4 v15, 0x1

    invoke-virtual {v12, v11, v13, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8584
    iput v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8585
    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v4, v12, :cond_2e5

    .line 8586
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v12, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8767
    .end local v3    # "lastViewIndex":I
    .end local v4    # "lastPos":I
    .end local v5    # "lastView":Landroid/view/View;
    .end local v6    # "lastViewHeight":I
    .end local v7    # "lastViewTop":I
    .end local v8    # "lastViewPixelsShowing":I
    .end local v9    # "dividerHeight":I
    .end local v10    # "extraScroll":I
    .end local v11    # "scrollBy":I
    :cond_2e5
    :goto_2e5
    return-void

    :pswitch_data_2e6
    .packed-switch 0x1
        :pswitch_275
        :pswitch_1e0
        :pswitch_166
        :pswitch_fc
        :pswitch_15
    .end packed-switch
.end method

.method public greylist-max-o start(I)V
    .registers 10
    .param p1, "position"    # I

    .line 8304
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 8306
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_13

    .line 8308
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 8313
    return-void

    .line 8316
    :cond_13
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8317
    .local v0, "childCount":I
    if-nez v0, :cond_1c

    .line 8319
    return-void

    .line 8322
    :cond_1c
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8323
    .local v1, "firstPos":I
    add-int v2, v1, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 8326
    .local v2, "lastPos":I
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 8327
    .local v4, "clampedPosition":I
    const/16 v5, 0xc8

    const/4 v6, -0x1

    if-ge v4, v1, :cond_40

    .line 8328
    sub-int v7, v1, v4

    add-int/2addr v7, v3

    .line 8329
    .local v7, "viewTravelCount":I
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_47

    .line 8330
    .end local v7    # "viewTravelCount":I
    :cond_40
    if-le v4, v2, :cond_5b

    .line 8331
    sub-int v7, v4, v2

    add-int/2addr v7, v3

    .line 8332
    .restart local v7    # "viewTravelCount":I
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 8341
    :goto_47
    if-lez v7, :cond_4d

    .line 8342
    div-int/2addr v5, v7

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_4f

    .line 8344
    :cond_4d
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 8346
    :goto_4f
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8347
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 8348
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8350
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8351
    return-void

    .line 8334
    .end local v7    # "viewTravelCount":I
    :cond_5b
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result v3

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I

    move-result v7

    if-ne v3, v7, :cond_70

    .line 8335
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v7

    invoke-static {v3, v7}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    .line 8337
    :cond_70
    invoke-direct {p0, v4, v6, v5}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 8338
    return-void
.end method

.method public greylist-max-o start(II)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .line 8355
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 8357
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 8358
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 8359
    return-void

    .line 8362
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1a

    .line 8364
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 8369
    return-void

    .line 8372
    :cond_1a
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 8373
    .local v1, "childCount":I
    if-nez v1, :cond_23

    .line 8375
    return-void

    .line 8378
    :cond_23
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8379
    .local v2, "firstPos":I
    add-int v3, v2, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 8382
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 8383
    .local v5, "clampedPosition":I
    const/16 v6, 0xc8

    if-ge v5, v2, :cond_55

    .line 8384
    sub-int v7, v3, p2

    .line 8385
    .local v7, "boundPosFromLast":I
    if-ge v7, v4, :cond_44

    .line 8387
    return-void

    .line 8390
    :cond_44
    sub-int v8, v2, v5

    add-int/2addr v8, v4

    .line 8391
    .local v8, "posTravel":I
    add-int/lit8 v4, v7, -0x1

    .line 8392
    .local v4, "boundTravel":I
    if-ge v4, v8, :cond_50

    .line 8393
    move v9, v4

    .line 8394
    .local v9, "viewTravelCount":I
    const/4 v10, 0x4

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_54

    .line 8396
    .end local v9    # "viewTravelCount":I
    :cond_50
    move v9, v8

    .line 8397
    .restart local v9    # "viewTravelCount":I
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 8399
    .end local v4    # "boundTravel":I
    .end local v7    # "boundPosFromLast":I
    .end local v8    # "posTravel":I
    :goto_54
    goto :goto_6d

    .end local v9    # "viewTravelCount":I
    :cond_55
    if-le v5, v3, :cond_81

    .line 8400
    sub-int v7, p2, v2

    .line 8401
    .local v7, "boundPosFromFirst":I
    if-ge v7, v4, :cond_5c

    .line 8403
    return-void

    .line 8406
    :cond_5c
    sub-int v8, v5, v3

    add-int/2addr v8, v4

    .line 8407
    .restart local v8    # "posTravel":I
    add-int/lit8 v9, v7, -0x1

    .line 8408
    .local v9, "boundTravel":I
    if-ge v9, v8, :cond_68

    .line 8409
    move v4, v9

    .line 8410
    .local v4, "viewTravelCount":I
    const/4 v10, 0x3

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_6c

    .line 8412
    .end local v4    # "viewTravelCount":I
    :cond_68
    move v10, v8

    .line 8413
    .local v10, "viewTravelCount":I
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move v9, v10

    .line 8415
    .end local v7    # "boundPosFromFirst":I
    .end local v8    # "posTravel":I
    .end local v10    # "viewTravelCount":I
    .local v9, "viewTravelCount":I
    :goto_6c
    nop

    .line 8420
    :goto_6d
    if-lez v9, :cond_73

    .line 8421
    div-int/2addr v6, v9

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_75

    .line 8423
    :cond_73
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 8425
    :goto_75
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8426
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 8427
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8429
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8430
    return-void

    .line 8416
    .end local v9    # "viewTravelCount":I
    :cond_81
    invoke-direct {p0, v5, p2, v6}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 8417
    return-void
.end method

.method public greylist-max-o startWithOffset(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 8434
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 8435
    return-void
.end method

.method public greylist-max-o startWithOffset(III)V
    .registers 12
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .line 8439
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 8441
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 8443
    move v0, p2

    .line 8444
    .local v0, "postOffset":I
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v2, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v2, p0, p1, v0, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v2, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 8449
    return-void

    .line 8452
    .end local v0    # "postOffset":I
    :cond_14
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8453
    .local v0, "childCount":I
    if-nez v0, :cond_1d

    .line 8455
    return-void

    .line 8458
    :cond_1d
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    .line 8460
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8461
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 8462
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 8463
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8464
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 8466
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8467
    .local v4, "firstPos":I
    add-int v5, v4, v0

    sub-int/2addr v5, v2

    .line 8470
    .local v5, "lastPos":I
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v6, v4, :cond_4f

    .line 8471
    sub-int v2, v4, v6

    .local v2, "viewTravelCount":I
    goto :goto_53

    .line 8472
    .end local v2    # "viewTravelCount":I
    :cond_4f
    if-le v6, v5, :cond_6b

    .line 8473
    sub-int v2, v6, v5

    .line 8482
    .restart local v2    # "viewTravelCount":I
    :goto_53
    int-to-float v3, v2

    int-to-float v6, v0

    div-float/2addr v3, v6

    .line 8483
    .local v3, "screenTravelCount":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_5e

    .line 8484
    move v6, p3

    goto :goto_61

    :cond_5e
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    :goto_61
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 8485
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8487
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8488
    return-void

    .line 8476
    .end local v2    # "viewTravelCount":I
    .end local v3    # "screenTravelCount":F
    :cond_6b
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 8477
    .local v1, "targetTop":I
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v7, v1, p2

    invoke-virtual {v6, v7, p3, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8478
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 8550
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8551
    return-void
.end method
