.class Landroid/widget/SemExpandableListView$9;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;

    .line 1906
    iput-object p1, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .line 1911
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 1912
    .local v0, "fraction":F
    iget-object v1, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1913
    .local v1, "ghostViewCount":I
    iget-object v2, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostExpandCollapseChildViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1915
    .local v2, "ghostExpandingViewsCount":I
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmAnimationState(Landroid/widget/SemExpandableListView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    .line 1916
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_cc

    .line 1917
    :cond_3c
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmAnimationState(Landroid/widget/SemExpandableListView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_81

    .line 1918
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmCollapsedGroupTopStart(Landroid/widget/SemExpandableListView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmCollapsedGroupTopEnd(Landroid/widget/SemExpandableListView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmCollapsedGroupTopStart(Landroid/widget/SemExpandableListView;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 1919
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_cc

    .line 1920
    :cond_81
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmAnimationState(Landroid/widget/SemExpandableListView;)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_a7

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmExpandingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v3

    if-eqz v3, :cond_a7

    .line 1921
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmExpandingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v3

    array-length v4, v3

    :goto_9a
    if-ge v5, v4, :cond_cc

    aget-object v6, v3, v5

    .line 1922
    .local v6, "expRect":Landroid/widget/SemExpandableListView$ExpandingRect;
    if-nez v6, :cond_a1

    goto :goto_a4

    .line 1923
    :cond_a1
    invoke-virtual {v6, v0}, Landroid/widget/SemExpandableListView$ExpandingRect;->update(F)V

    .line 1921
    .end local v6    # "expRect":Landroid/widget/SemExpandableListView$ExpandingRect;
    :goto_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_9a

    .line 1925
    :cond_a7
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmAnimationState(Landroid/widget/SemExpandableListView;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_cc

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmCollapsingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v3

    if-eqz v3, :cond_cc

    .line 1926
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmCollapsingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v3

    array-length v4, v3

    :goto_bf
    if-ge v5, v4, :cond_cc

    aget-object v6, v3, v5

    .line 1927
    .local v6, "collapsingRect":Landroid/widget/SemExpandableListView$CollapsingRect;
    if-nez v6, :cond_c6

    goto :goto_c9

    .line 1928
    :cond_c6
    invoke-virtual {v6, v0}, Landroid/widget/SemExpandableListView$CollapsingRect;->update(F)V

    .line 1926
    .end local v6    # "collapsingRect":Landroid/widget/SemExpandableListView$CollapsingRect;
    :goto_c9
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 1932
    :cond_cc
    :goto_cc
    add-int v3, v1, v2

    if-nez v3, :cond_d1

    .line 1933
    return-void

    .line 1937
    :cond_d1
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmBitmapUpdateBounds(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1938
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_db
    if-ge v3, v1, :cond_fb

    .line 1939
    iget-object v4, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1940
    .local v4, "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmBitmapUpdateBounds(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1938
    add-int/lit8 v3, v3, 0x1

    goto :goto_db

    .line 1942
    .end local v3    # "i":I
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_fb
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_fc
    if-ge v3, v2, :cond_11c

    .line 1943
    iget-object v4, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostExpandCollapseChildViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1944
    .restart local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmBitmapUpdateBounds(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1942
    add-int/lit8 v3, v3, 0x1

    goto :goto_fc

    .line 1946
    .end local v3    # "i":I
    .end local v4    # "vInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_11c
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmBitmapUpdateBounds(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SemExpandableListView;->invalidate(Landroid/graphics/Rect;)V

    .line 1947
    return-void
.end method
